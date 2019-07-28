                    <nav class="uk-navbar uk-light">
                        <a class="<? if($this->curbase == "start") {echo "uk-hidden";} ?>" href="?">
                            <img class="uk-hidden@s" style="height: 60px; width:60px; margin-top: 10px; margin-bottom:10px;" src="images/logo.png" alt="">
                            <img class="uk-visible@s" style="height: 60px; margin-top: 10px; margin-bottom:10px;" src="images/logo-text.png" alt="">
                        </a>
                        <div class="uk-navbar-right">
                            <ul class="uk-navbar-nav">
                                <li class="<? if($this->curpage == "register-page") {echo "uk-active";} if($this->isloggedin) {echo "uk-hidden";} ?>"><a href="?a=register">Регистрация</a></li>
                                <?
                                    if(isset($_SESSION["isloggedin"])) {
                                        echo '<li class=""><a href="auth.php?a=logout">выйти</a></li>';
                                    }
                                ?>

                            </ul>
                            <div class="uk-navbar-item"><a href="<?
                                    if(isset($_SESSION["isloggedin"])) {
                                        echo "?a=lk";
                                    } else {
                                        echo "?a=login";
                                    }
                                    ?>"
                                    class="uk-button uk-button-default tm-button-default uk-icon">
                                    <?
                                    if(isset($_SESSION["isloggedin"])) {
                                        echo $_SESSION["username"];
                                    } else {
                                        echo "Войти";
                                    }
                                    ?>
                                </a></div>
                        </div>
                    </nav>