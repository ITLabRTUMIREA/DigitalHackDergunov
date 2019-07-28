                <div uk-height-viewport="offset-top: true; offset-bottom: true"
                class="uk-section uk-section-small uk-flex uk-flex-middle uk-text-center"
                style="min-height: calc((100vh - 80px) - 103px);">
                <div class="uk-width-1-1">
                    <div class="uk-container">
                        <p>
                            <a href="?"><img style="width: 350px" src="images/logo-text.png" alt=""></a>
                        </p>
                    
                    <p>
                            <div class="uk-card  uk-card-large uk-card-default uk-card-body 
                            login-form uk-width-1-1 uk-width-5-6@s  uk-width-2-3@m  uk-width-1-2@l  uk-width-1-2@xl uk-align-center">
                                <h3 class="uk-card-title">Регистрация</h3>
                                <p>
                                    <form class="uk-form-stacked" action="auth.php" method="post">

                                        <input type="hidden" name="a" value="register">

                                        <div class="uk-margin-small">
                                            <label class="uk-form-label uk-text-left" for="form-stacked-text">Логин</label>
                                            <div class="uk-form-controls">
                                                <input class="uk-input" id="form-stacked-text" name="login" type="text">
                                            </div>
                                        </div>

                                        <div class="uk-margin-small">
                                            <label class="uk-form-label uk-text-left" for="form-stacked-text">Пароль</label>
                                            <div class="uk-form-controls">
                                                <input class="uk-input" id="form-stacked-text" name="password" type="password">
                                            </div>
                                        </div>

                                        <div class="uk-margin-small">
                                            <label class="uk-form-label uk-text-left" for="form-stacked-text">Подтверждение пароля</label>
                                            <div class="uk-form-controls">
                                                <input class="uk-input" id="form-stacked-text" name="password2" type="password">
                                            </div>
                                        </div>

                                        <div>
                                            <button class="uk-button uk-button-primary uk-margin-top">Зарегистрироваться</button>
                                        </div>
                                    </form>
                                </p>
                            </div>
                        </p>
                    </div>
                </div>
            </div>