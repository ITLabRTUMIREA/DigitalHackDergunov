<article class="uk-comment uk-comment-primary uk-margin-small-top">
    <header class="uk-comment-header uk-grid-medium uk-flex-middle" uk-grid>
        <div class="uk-width-auto">
            <img class="uk-comment-avatar" src="images/noavatar.png" width="80" height="80" alt="">
        </div>
        <div class="uk-width-expand">
            <h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#"><?=$this->commentData["author"]?></a></h4>
            <ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
                <li><a href="#"><?=$this->commentData["date"]?></a></li>
            </ul>
        </div>
    </header>
    <div class="uk-comment-body">
        <p><?=$this->commentData["body"]?></p>
    </div>
</article>