                <div uk-height-viewport="offset-top: true; offset-bottom: true"
                class="uk-section uk-section-small uk-flex uk-flex-middle uk-text-center"
                style="min-height: calc((100vh - 80px) - 103px);">
                <div class="uk-width-1-1">
                    <div class="uk-container">
                        <p>
                            <a href="?"><img style="width: 350px" src="images/logo-text.png" alt=""></a>
                        </p>
                        <p>
                            <div class="uk-card uk-card-large uk-card-default uk-card-body
                            login-form uk-width-1-1 uk-width-5-6@s  uk-width-2-3@m  uk-width-1-2@l  uk-width-1-2@xl uk-align-center">
                                <h3 class="uk-card-title">Вход в систему</h3>
                                <p>
                                    <form action="auth.php" method="post">

                                        <input type="hidden" name="a" value="login">

                                        <div class="uk-margin">
                                            <div class="uk-inline uk-width-1-1">
                                                <span class="uk-form-icon" uk-icon="icon: user"></span>
                                                <input class="uk-input" name="login" type="text">
                                            </div>
                                        </div>

                                        <div class="uk-margin">
                                            <div class="uk-inline uk-width-1-1">
                                                <span class="uk-form-icon uk-form-icon-flip" uk-icon="icon: lock"></span>
                                                <input class="uk-input" name="password" type="password">
                                            </div>
                                        </div>

                                        <div>
                                            <button class="uk-button uk-button-default">Войти</button>
                                        </div>
                                    </form>
                                </p>
                            </div>
                        </p>
                    </div>
                </div>
            </div>