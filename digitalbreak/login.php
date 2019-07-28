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
            <div uk-sticky="media: 960"
                class="uk-navbar-container tm-navbar-container uk-navbar-transparent uk-sticky uk-sticky-fixed"
                style="position: fixed; top: 0px; width: 1073px;">
                <div class="uk-container uk-container-expand">
                    <nav class="uk-navbar uk-light">
                        <div class="uk-navbar-right ">
                            <ul class="uk-navbar-nav  uk-visible@m">
                                <li class=""><a href="/pro">О сервисе</a></li>

                            </ul>
                            <div class="uk-navbar-item uk-visible@m"><a href="/download"
                                    class="uk-button uk-button-default tm-button-default uk-icon">Войти</a></div> <a uk-navbar-toggle-icon="" href="#offcanvas" uk-toggle=""
                                class="uk-navbar-toggle uk-hidden@m uk-icon uk-navbar-toggle-icon"><svg width="20"
                                    height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"
                                    data-svg="navbar-toggle-icon">
                                    <rect y="9" width="20" height="2"></rect>
                                    <rect y="3" width="20" height="2"></rect>
                                    <rect y="15" width="20" height="2"></rect>
                                </svg></a>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="uk-sticky-placeholder" style="height: 80px; margin: 0px;"></div>
            <div uk-height-viewport="offset-top: true; offset-bottom: true"
                class="uk-section uk-section-small uk-flex uk-flex-middle uk-text-center"
                style="min-height: calc((100vh - 80px) - 103px);">
                <div class="uk-width-1-1">
                    <div class="uk-container">
                        <p>
                            <div class="uk-card uk-card-large uk-card-default uk-card-body uk-width-1-1@s uk-width-auto@m
                            login-form">
                                <h3 class="uk-card-title">Вход в систему</h3>
                                <p>
                                    <form>

                                        <div class="uk-margin">
                                            <div class="uk-inline uk-width-1-1">
                                                <span class="uk-form-icon" uk-icon="icon: user"></span>
                                                <input class="uk-input" type="text">
                                            </div>
                                        </div>

                                        <div class="uk-margin">
                                            <div class="uk-inline uk-width-1-1">
                                                <span class="uk-form-icon uk-form-icon-flip" uk-icon="icon: lock"></span>
                                                <input class="uk-input" type="text">
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
            <div class="uk-section-small">
                <div class="uk-container uk-container-expand uk-text-center uk-position-relative">
                    <ul uk-margin="" class="uk-subnav tm-subnav uk-flex-inline uk-flex-center uk-margin-remove-bottom">
                        <li class="uk-first-column"><span>Версия <span uikit-version="">0.0.1 Pre-Alpha</span></span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="offcanvas" uk-offcanvas="mode: push; overlay: true" class="uk-offcanvas">
            <div class="uk-offcanvas-bar">
                <div class="uk-panel">
                    <ul class="uk-nav uk-nav-default tm-nav">
                        <li class="uk-nav-header">General</li>
                        <li><a href="./index">Home</a></li>
                        <li><a href="./pro">Pro</a></li>
                        <li><a href="./changelog">Changelog</a></li>
                        <li><a href="./download">Download</a></li>
                    </ul>
                    <ul class="uk-nav uk-nav-default tm-nav uk-margin-top">
                        <li class="uk-nav-header">Getting started</li>
                        <li exact=""><a href="./docs/introduction">Introduction</a></li>
                        <li exact=""><a href="./docs/installation">Installation</a></li>
                        <li exact=""><a href="./docs/less">Less</a></li>
                        <li exact=""><a href="./docs/sass">Sass</a></li>
                        <li exact=""><a href="./docs/javascript">JavaScript</a></li>
                        <li exact=""><a href="./docs/webpack">Webpack</a></li>
                        <li exact=""><a href="./docs/custom-icons">Custom icons</a></li>
                        <li exact=""><a href="./docs/avoiding-conflicts">Avoiding conflicts</a></li>
                        <li exact=""><a href="./docs/rtl">RTL support</a></li>
                        <li exact=""><a href="./docs/migration">Migration</a></li>
                    </ul>
                    <ul class="uk-nav uk-nav-default tm-nav uk-margin-top">
                        <li class="uk-nav-header">Components</li>
                        <li exact=""><a href="./docs/accordion">Accordion</a></li>
                        <li exact=""><a href="./docs/alert">Alert</a></li>
                        <li exact=""><a href="./docs/align">Align</a></li>
                        <li exact=""><a href="./docs/animation">Animation</a></li>
                        <li exact=""><a href="./docs/article">Article</a></li>
                        <li exact=""><a href="./docs/background">Background</a></li>
                        <li exact=""><a href="./docs/badge">Badge</a></li>
                        <li exact=""><a href="./docs/base">Base</a></li>
                        <li exact=""><a href="./docs/breadcrumb">Breadcrumb</a></li>
                        <li exact=""><a href="./docs/button">Button</a></li>
                        <li exact=""><a href="./docs/card">Card</a></li>
                        <li exact=""><a href="./docs/close">Close</a></li>
                        <li exact=""><a href="./docs/column">Column</a></li>
                        <li exact=""><a href="./docs/comment">Comment</a></li>
                        <li exact=""><a href="./docs/container">Container</a></li>
                        <li exact=""><a href="./docs/countdown">Countdown</a></li>
                        <li exact=""><a href="./docs/cover">Cover</a></li>
                        <li exact=""><a href="./docs/description-list">Description List</a></li>
                        <li exact=""><a href="./docs/divider">Divider</a></li>
                        <li exact=""><a href="./docs/dotnav">Dotnav</a></li>
                        <li exact=""><a href="./docs/drop">Drop</a></li>
                        <li exact=""><a href="./docs/dropdown">Dropdown</a></li>
                        <li exact=""><a href="./docs/filter">Filter</a></li>
                        <li exact=""><a href="./docs/flex">Flex</a></li>
                        <li exact=""><a href="./docs/form">Form</a></li>
                        <li exact=""><a href="./docs/grid">Grid</a></li>
                        <li exact=""><a href="./docs/heading">Heading</a></li>
                        <li exact=""><a href="./docs/height">Height</a></li>
                        <li exact=""><a href="./docs/icon">Icon</a></li>
                        <li exact=""><a href="./docs/iconnav">Iconnav</a></li>
                        <li exact=""><a href="./docs/image">Image</a></li>
                        <li exact=""><a href="./docs/inverse">Inverse</a></li>
                        <li exact=""><a href="./docs/label">Label</a></li>
                        <li exact=""><a href="./docs/leader">Leader</a></li>
                        <li exact=""><a href="./docs/lightbox">Lightbox</a></li>
                        <li exact=""><a href="./docs/link">Link</a></li>
                        <li exact=""><a href="./docs/list">List</a></li>
                        <li exact=""><a href="./docs/margin">Margin</a></li>
                        <li exact=""><a href="./docs/marker">Marker</a></li>
                        <li exact=""><a href="./docs/modal">Modal</a></li>
                        <li exact=""><a href="./docs/nav">Nav</a></li>
                        <li exact=""><a href="./docs/navbar">Navbar</a></li>
                        <li exact=""><a href="./docs/notification">Notification</a></li>
                        <li exact=""><a href="./docs/offcanvas">Off-canvas</a></li>
                        <li exact=""><a href="./docs/overlay">Overlay</a></li>
                        <li exact=""><a href="./docs/padding">Padding</a></li>
                        <li exact=""><a href="./docs/pagination">Pagination</a></li>
                        <li exact=""><a href="./docs/parallax">Parallax</a></li>
                        <li exact=""><a href="./docs/placeholder">Placeholder</a></li>
                        <li exact=""><a href="./docs/position">Position</a></li>
                        <li exact=""><a href="./docs/print">Print</a></li>
                        <li exact=""><a href="./docs/progress">Progress</a></li>
                        <li exact=""><a href="./docs/scroll">Scroll</a></li>
                        <li exact=""><a href="./docs/scrollspy">Scrollspy</a></li>
                        <li exact=""><a href="./docs/search">Search</a></li>
                        <li exact=""><a href="./docs/section">Section</a></li>
                        <li exact=""><a href="./docs/slidenav">Slidenav</a></li>
                        <li exact=""><a href="./docs/slider">Slider</a></li>
                        <li exact=""><a href="./docs/slideshow">Slideshow</a></li>
                        <li exact=""><a href="./docs/sortable">Sortable</a></li>
                        <li exact=""><a href="./docs/spinner">Spinner</a></li>
                        <li exact=""><a href="./docs/sticky">Sticky</a></li>
                        <li exact=""><a href="./docs/subnav">Subnav</a></li>
                        <li exact=""><a href="./docs/svg">SVG</a></li>
                        <li exact=""><a href="./docs/switcher">Switcher</a></li>
                        <li exact=""><a href="./docs/tab">Tab</a></li>
                        <li exact=""><a href="./docs/table">Table</a></li>
                        <li exact=""><a href="./docs/text">Text</a></li>
                        <li exact=""><a href="./docs/thumbnav">Thumbnav</a></li>
                        <li exact=""><a href="./docs/tile">Tile</a></li>
                        <li exact=""><a href="./docs/toggle">Toggle</a></li>
                        <li exact=""><a href="./docs/tooltip">Tooltip</a></li>
                        <li exact=""><a href="./docs/totop">Totop</a></li>
                        <li exact=""><a href="./docs/transition">Transition</a></li>
                        <li exact=""><a href="./docs/upload">Upload</a></li>
                        <li exact=""><a href="./docs/utility">Utility</a></li>
                        <li exact=""><a href="./docs/video">Video</a></li>
                        <li exact=""><a href="./docs/visibility">Visibility</a></li>
                        <li exact=""><a href="./docs/width">Width</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>



</body>

</html>



