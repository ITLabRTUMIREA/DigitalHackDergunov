<?
    $db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
   
    $data = $db->getRow('SELECT * FROM task WHERE id=?i',$this->taskid);

    $user = $db->getRow('SELECT * FROM user WHERE id=?i',$data["userid"]);
    $username = $user["login"];

    $date = date("d.m.Y", $data["date"]); 

    $status = $data["status"];
    if($data["status"] == "released") {
        $statuslabel = '<span class="uk-label uk-label-success">Опубликован</span>';
    } else if($data["status"] == "moderating") {
        $statuslabel = '<span class="uk-label uk-label-warning">На модерации</span>';
    } else if($data["status"] == "remoderating") {
        $statuslabel = '<span class="uk-label uk-label-warning">На ремодерации</span>';
    } else if($data["status"] == "blocked") {
        $statuslabel = '<span class="uk-label uk-label-danger">Отклонен</span>';
    } 

    $answers = "";

    $tags = unserialize($data["tags"]);


    foreach (unserialize($data["answers"]) as $answer) {
        if($answer[0] == 1) {
            $chlabel = '<span class="uk-label label-adjust uk-label-success">Правильно</span>';
        } else {
            $chlabel = '<span class="uk-label label-adjust uk-label-danger">Неправильно</span>';
        }
        $answers = $answers.'<tr><td class="uk-table-shrink">'.$chlabel.'</td><td class="uk-width-1-1">'.$answer[1].'</td></tr>';
    }

    $comments = $db->getAll('SELECT * FROM comment WHERE taskid=?i',$this->taskid);



?>




<div class="uk-padding">
    <article class="uk-comment">
        <header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
            <div class="uk-width-expand">
                <h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#"><b>Задание от <?=$username?></b></a></h4>
                <ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-small-top uk-margin-remove-bottom">
                <li><a><?=$statuslabel?></a></li>
                    <li><a href="#" class="uk-link-muted"><?=$date?></a></li>
                    <li class="<? if(!($this->role == "moderator" and ($status == "released" or $status == "blocked") and $this->isloggedin)) {echo "uk-hidden";} ?>"><a href="#modal-remoderate" class="uk-link-muted" uk-toggle>отправить на ремодерацию</a></li>
                    <li class="<? if(!($this->role == "user" and $status == "released" and $this->isloggedin)) {echo "uk-hidden";} ?>"><a href="#modal-remoderate-req" class="uk-link-muted" uk-toggle>запросить ремодерацию</a></li>
                    <li class="<? if(!($this->role == "moderator" and $status != "released" and $this->isloggedin)) {echo "uk-hidden";} ?>"><a href="#modal-release" class="uk-link-muted" uk-toggle>утвердить</a></li>
                    <li class="<? if(!($this->role == "moderator" and $status != "released" and $status != "blocked" and $this->isloggedin)) {echo "uk-hidden";} ?>"><a href="#modal-block" class="uk-link-muted" uk-toggle>отклонить</a></li>
                </ul> 
                <ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top tags-margin">
                    <li>
                        <?

                            foreach($tags as $tag) {
                                echo '<a><span class="uk-label uk-margin-small-right">'.$tag.'</span></a>';
                            }

                        ?>
                    </li>
                </ul> 
            </div>
        </header>
        <hr>
            
                <div class="uk-comment-body">
                    <p class="uk-h4"><?=$data["body"]?></p>
                </div>

                
                <table class="uk-table  uk-table-striped uk-margin-small2-top">
                <tbody>
                    
                    <?=$answers?>

                </tbody>
            </table>
</article>

<hr class="uk-divider-icon">

<?


if(count($comments) == 0) {
    $this->display("nocomment");
} else {

    foreach ($comments as $comment) {

        $author = $db->getRow('SELECT * FROM user WHERE id=?i',$comment["userid"]);
        $authorname = $author["login"];
        $commentData["author"] = $authorname;
        $commentData["date"] = date("d.m.Y H:i", $comment["date"]); 
        $commentData["body"] = $comment["body"];

        $this->set("commentData", $commentData);
        $this->display("comment");
    }
}

?>

<div class="<?if($status != "released") {echo "uk-hidden";}?>">
<hr>


<?

if(!isset($_SESSION["isloggedin"])) {
    $this->display("noeditor");
} else {
    $this->display("editor");
}

?>

</div>






</div>




<div id="modal-remoderate" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <h2 class="uk-modal-title">Отправить на ремодерацию</h2>
        <p>Отправленное на ремодерацию задание будет скрыто и отправлено другим модераторам портала для обработки. Вы уверены, что хотите продолжить?</p>
        <p>
            <form class="uk-text-right" action="task.php" method="post">
            <input type="hidden" name="a" value="remoderate">
            <input type="hidden" name="id" value="<?=$this->taskid?>">
            <button class="uk-button uk-button-default uk-modal-close" type="button">Отмена</button>
            <button class="uk-button uk-button-primary">Ремодерация</button>
            </form>
        </p>
    </div>
</div>

<div id="modal-release" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <h2 class="uk-modal-title">Удвердить добавление задания</h2>
        <p>Задание будет добавлено в тестирующую систему. Вы уверены, что хотите продолжить?</p>
        <p>
            <form class="uk-text-right" action="task.php" method="post">
            <input type="hidden" name="a" value="release">
            <input type="hidden" name="id" value="<?=$this->taskid?>">
            <button class="uk-button uk-button-default uk-modal-close" type="button">Отмена</button>
            <button class="uk-button uk-button-primary">Удвердить</button>
            </form>
        </p>
    </div>
</div>

<div id="modal-block" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <h2 class="uk-modal-title">Отклонить добавление задания</h2>
        <p>Задание будет помечено как неподходящее для тестирующей системы. Вы уверены, что хотите продолжить?</p>
        <p>
            <form class="uk-text-right" action="task.php" method="post">
            <input type="hidden" name="a" value="block">
            <input type="hidden" name="id" value="<?=$this->taskid?>">
            <button class="uk-button uk-button-default uk-modal-close" type="button">Отмена</button>
            <button class="uk-button uk-button-primary">Отклонить</button>
            </form>
        </p>
    </div>
</div>


<div id="modal-remoderate-req" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <h2 class="uk-modal-title">Предложить задание на ремодерацию</h2>
        <p>Если задание содержит ошибки, неполно или некорректно отражает суть ситуации, либо предлагает неправильный выбор ответа, оно должно пройти ремодерацию. Чем больше запросов будет отправлено, тем быстрее просьба будет рассмотрена модераторами портала.</p>
        <p>Перед продолжением убедитесь, что хорошо разбираетесь в ситуации и уверены в наличии причин для ремодерации. Ложные запросы уменьшают эффективность портала.</p>
        <p>
            <form class="uk-text-right" action="task.php" method="post">
            <input type="hidden" name="a" value="remoderate-req">
            <input type="hidden" name="id" value="<?=$this->taskid?>">
            <button class="uk-button uk-button-default uk-modal-close" type="button">Отмена</button>
            <button class="uk-button uk-button-primary">Отправить запрос</button>
            </form>
        </p>
    </div>
</div>