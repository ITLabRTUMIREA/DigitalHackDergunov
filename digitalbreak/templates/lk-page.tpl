<?

    $db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
   

    $user = $db->getRow('SELECT * FROM user WHERE id=?i',$_SESSION["userid"]);
    $username = $user["login"];

    if($user["role"] == "moderator") {
        $role = "МОДЕРАТОР";
    } else {
        $role = "ПОЛЬЗОВАТЕЛЬ";
    }

    $data1 = $db->getAll('SELECT * FROM task WHERE userid=?i',$_SESSION["userid"]);
    $data2 = $db->getAll('SELECT * FROM task WHERE status=?s',"moderating");
    $data3 = $db->getAll('SELECT * FROM task WHERE status=?s',"remoderating");
    $data4 = $db->getAll('SELECT * FROM task WHERE status=?s and remoderateRequests>0 ORDER BY remoderateRequests DESC',"released");



?>


<div class="uk-padding">
    <article class="uk-comment">
        <header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
            <div class="uk-width-auto">
                <img class="uk-comment-avatar" src="images/noavatar.png" width="80" height="80" alt="">
            </div>
            <div class="uk-width-expand">
                <h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#"><?=$username?></a></h4>
                <ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
                    <li><?=$role?></li>
                </ul>
            </div>
        </header>
    </article>

<ul uk-tab>
    <li><a href="#">Мои вопросы</a></li>
    <li class="<? if($_SESSION["role"] != "moderator") {echo "uk-hidden";} ?>" ><a href="#">Ожидают модерации</a></li>
    <li class="<? if($_SESSION["role"] != "moderator") {echo "uk-hidden";} ?>"><a href="#">Ожидают ремодерации</a></li>
    <li class="<? if($_SESSION["role"] != "moderator") {echo "uk-hidden";} ?>"><a href="#">Кандидаты на ремодерацию</a></li>
</ul>

<ul class="uk-switcher uk-margin">
    <li>
        
        <div class="uk-overflow-auto">
            <table class="uk-table uk-table-justify uk-table-striped uk-table-divider">

                <tbody>

                    <?

                    $outer = "";
                    
                    foreach($data1 as $task) {
                        $outer = $outer.'<tr>  <td class="uk-table-link uk-table-expand"><a class="uk-link-reset" href="?a=task&id='.$task["id"].'">';

                        $status = $task["status"];
                        if($task["status"] == "released") {
                            $statuslabel = '<span class="uk-label uk-label-success">Опубликован</span>';
                        } else if($task["status"] == "moderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На модерации</span>';
                        } else if($task["status"] == "remoderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На ремодерации</span>';
                        } else if($task["status"] == "blocked") {
                            $statuslabel = '<span class="uk-label uk-label-danger">Отклонен</span>';
                        } 

                        $outer = $outer.$statuslabel.'<br>'.$task["body"].'</a></td></tr>';
                    }
                    
                    echo $outer;
                    ?>

                </tbody>
            </table>
        </div>


    </li>
    <li>
        
        <div class="uk-overflow-auto">
            <table class="uk-table uk-table-justify uk-table-striped uk-table-divider">

                <tbody>

                    <?

                    $outer = "";
                    
                    foreach($data2 as $task) {
                        $outer = $outer.'<tr>  <td class="uk-table-link uk-table-expand"><a class="uk-link-reset" href="?a=task&id='.$task["id"].'">';

                        $status = $task["status"];
                        if($task["status"] == "released") {
                            $statuslabel = '<span class="uk-label uk-label-success">Опубликован</span>';
                        } else if($task["status"] == "moderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На модерации</span>';
                        } else if($task["status"] == "remoderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На ремодерации</span>';
                        } else if($task["status"] == "blocked") {
                            $statuslabel = '<span class="uk-label uk-label-danger">Отклонен</span>';
                        } 

                        $outer = $outer.$statuslabel.'<br>'.$task["body"].'</a></td></tr>';
                    }
                    
                    echo $outer;
                    ?>

                </tbody>
            </table>
        </div>


    </li>
    <li>
        
        <div class="uk-overflow-auto">
            <table class="uk-table uk-table-justify uk-table-striped uk-table-divider">

                <tbody>

                    <?

                    $outer = "";
                    
                    foreach($data3 as $task) {
                        $outer = $outer.'<tr>  <td class="uk-table-link uk-table-expand"><a class="uk-link-reset" href="?a=task&id='.$task["id"].'">';

                        $status = $task["status"];
                        if($task["status"] == "released") {
                            $statuslabel = '<span class="uk-label uk-label-success">Опубликован</span>';
                        } else if($task["status"] == "moderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На модерации</span>';
                        } else if($task["status"] == "remoderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На ремодерации</span>';
                        } else if($task["status"] == "blocked") {
                            $statuslabel = '<span class="uk-label uk-label-danger">Отклонен</span>';
                        } 

                        $outer = $outer.$statuslabel.'<br>'.$task["body"].'</a></td></tr>';
                    }
                    
                    echo $outer;
                    ?>

                </tbody>
            </table>
        </div>


    </li>
    <li>
        
        <div class="uk-overflow-auto">
            <table class="uk-table uk-table-justify uk-table-striped uk-table-divider">

                <tbody>

                    <?

                    $outer = "";
                    
                    foreach($data4 as $task) {
                        $outer = $outer.'<tr>  <td class="uk-table-link uk-table-expand"><a class="uk-link-reset" href="?a=task&id='.$task["id"].'">';

                        $status = $task["status"];
                        if($task["status"] == "released") {
                            $statuslabel = '<span class="uk-label uk-label-success">Опубликован</span>';
                        } else if($task["status"] == "moderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На модерации</span>';
                        } else if($task["status"] == "remoderating") {
                            $statuslabel = '<span class="uk-label uk-label-warning">На ремодерации</span>';
                        } else if($task["status"] == "blocked") {
                            $statuslabel = '<span class="uk-label uk-label-danger">Отклонен</span>';
                        } 

                        $outer = $outer.$statuslabel.'<br>'.$task["body"].'</a></td></tr>';
                    }
                    
                    echo $outer;
                    ?>

                </tbody>
            </table>
        </div>


    </li>
</ul>

</div>
