<html lang="en-gb" dir="ltr">

<head>
    <title>CyberCube</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/uikit.min.css" />
        <link rel="stylesheet" href="css/theme.css" />
        <link rel="stylesheet" href="css/main.css" />
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
</head>

<body>
    <div>
        <div class="uk-section-primary uk-preserve-color tm-section-texture">
            <div
                class="uk-navbar-container tm-navbar-container uk-navbar-transparent uk-sticky topbar-main"
                style="position: absolute; top: 0px; width: 100%;">
                <div class="uk-container uk-container-expand">
                    <? $this->display("topbar"); ?>
                </div>
            </div>

            <div uk-grid class="uk-margin-large2-top">

                <div class="uk-width-1-1 uk-width-1-1@s uk-width-5-6@m uk-width-2-3@l uk-width-2-3@xl uk-align-center">
                    <div class="main-content">
                        <? $this->display($this->curpage); ?>
                    </div>
                </div>
 
            </div>

            <div class="uk-section-small uk-light">
                <div class="uk-container uk-container-expand uk-text-center uk-position-relative">
                    <ul uk-margin="" class="uk-subnav tm-subnav uk-flex-inline uk-flex-center uk-margin-remove-bottom">
                        <li class="uk-first-column"><span>Версия <span uikit-version="">0.0.1 Pre-Alpha</span></span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <?

if(isset($_SESSION["alert"])) {
    $this->set("notifyText",$_SESSION["alert"][0]);
    $this->set("notifyType",$_SESSION["alert"][1]);
    $this->display("notify");
    unset($_SESSION["alert"]);
}



?>

</body>

</html>