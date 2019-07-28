<span class="uk-h4">Написать комментарий</span>

<form action="comment.php" method="post">
    <fieldset class="uk-fieldset">

        <input type="hidden" name="a" value="add">
        <input type="hidden" name="taskid" value="<?=$this->taskid?>">

        <div class="uk-margin-top">
            <textarea class="uk-textarea comment-textarea" name="body" rows="5" placeholder="Напишите комментарий (не более 300 символов)"></textarea>
        </div>
        <button class="uk-button uk-margin-top uk-button-primary">Отправить</button>
    </fieldset>
</form>