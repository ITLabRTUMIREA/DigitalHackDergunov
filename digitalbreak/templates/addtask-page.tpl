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
                            login-form uk-width-1-1 uk-width-5-6@s  uk-width-2-3@m  uk-width-2-3@l  uk-width-2-3@xl uk-align-center">
                                <h3 class="uk-card-title">Предложить задание</h3>
                                <p>
                                    <form class="uk-form-stacked uk-text-left uk-margin-remove" action="task.php" method="post">

                                        <input type="hidden" name="a" value="add">


                                        <div class="uk-margin-small">
                                            <label class="uk-form-label" for="form-stacked-text">Теги задания</label>
                                            <p class="uk-text-meta uk-margin-small-top"><cite>Укажите теги, описывающие категорию вашего задания. Теги записывайте через запятую. Примеры тегов: основы, социальные сети, онлайн-банкинг, видеоигры.</cite></p>

                                            <div class="uk-form-controls">
                                                <input class="uk-input" id="form-stacked-text" name="tags" type="text" placeholder="Основы работы в сети, мультимедиа">
                                            </div>
                                        </div>

                                        <div class="uk-margin-small2-top">
                                            <label class="uk-form-label" for="form-stacked-text">Формулировка задания</label>
                                            <p class="uk-text-meta uk-margin-small-top"><cite>Опишите контекст ситуации. Укажите достаточно фактов для того, чтобы выбор ответа был одозначным. Старайтесь писать кратко и лаконично.</cite></p>
                                            <div class="uk-form-controls">
                                            <textarea class="uk-textarea addtask-textarea" name="body" rows="10" placeholder=""></textarea>
                                            </div>
                                        </div>

                                        <div class="uk-margin-small2-top">
                                            <label class="uk-form-label" for="form-stacked-text">Варианты ответов</label>
                                            <p class="uk-text-meta uk-margin-small"><cite>К заданию можно добавить от 2 до 5 вариантов ответа. Лишние поля оставьте пустыми. Для создания задания с множественным выбором укажите верными более одного варианта.</cite></p>
                                            <table class="uk-table uk-table-justify uk-table-divider uk-margin-remove">
                                            <thead>
                                                <tr>
                                                    <th class="uk-table-shrink">Верно</th>
                                                    <th>Текст ответа</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><label><input class="uk-checkbox uk-form-large addtask-chb" name="ch1" value="yes" type="checkbox" checked></label></td>
                                                    <td><textarea class="uk-textarea uk-form-small addtask-textarea" name="answ1" rows="4" placeholder="Ответ 1"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><label><input class="uk-checkbox uk-form-large addtask-chb" name="ch2" value="yes" type="checkbox"></label></td>
                                                    <td><textarea class="uk-textarea uk-form-small addtask-textarea" name="answ2" rows="4" placeholder="Ответ 2"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><label><input class="uk-checkbox uk-form-large addtask-chb" name="ch3" value="yes" type="checkbox"></label></td>
                                                    <td><textarea class="uk-textarea uk-form-small addtask-textarea" name="answ3" rows="4" placeholder="Ответ 3"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><label><input class="uk-checkbox uk-form-large addtask-chb" name="ch4" value="yes" type="checkbox"></label></td>
                                                    <td><textarea class="uk-textarea uk-form-small addtask-textarea" name="answ4" rows="4" placeholder="Ответ 4"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><label><input class="uk-checkbox uk-form-large addtask-chb" name="ch5" value="yes" type="checkbox"></label></td>
                                                    <td><textarea class="uk-textarea uk-form-small addtask-textarea" name="answ5" rows="4" placeholder="Ответ 5"></textarea></td>
                                                </tr>


                                            </tbody>
                                        </table>
                                        </div>



                                        




                                        <div>
                                            <button class="uk-button uk-button-primary uk-width-1-1">Отправить на модерацию</button>
                                        </div>
                                    </form>
                                </p>
                            </div>

                           
                        </p>
                    </div>
                </div>
            </div>