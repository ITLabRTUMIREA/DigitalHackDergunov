<?
require_once("sql.php");
session_start();

$db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
//$ids = $db->getCol('SELECT id FROM user');

if(!(isset($_POST["a"]) or isset($_GET["a"]))) {
    header("Location: /digitalbreak");
}

if(isset($_POST["a"]) and $_POST["a"] == "login") {
    if(isset($_POST["login"]) && isset($_POST["password"]))
    {
        $data = $db->getCol('SELECT id FROM user WHERE login=?s AND pass=?s',$_POST["login"], $_POST["password"]);
        if(count($data) == 1) {
            $_SESSION["isloggedin"] = true;
            $_SESSION["userid"] = $data[0];
            $data = $db->getRow('SELECT role FROM user WHERE login=?s AND pass=?s',$_POST["login"], $_POST["password"]);
            $_SESSION["role"] = $data["role"];
            $_SESSION["username"] = $_POST["login"];
            $_SESSION["alert"] = array("Вход выполнен", "success");
        }
    }
}

if(isset($_POST["a"]) and $_POST["a"] == "register") {
    if(isset($_POST["login"]) && isset($_POST["password"])  && isset($_POST["password2"]) && $_POST["login"]!="" && $_POST["password"]!="" && $_POST["password"]==$_POST["password2"])
    {
        $data = $db->getCol('SELECT id FROM user WHERE login=?s',$_POST["login"]);
        if(count($data) == 0) {
            $db->query("INSERT INTO user (login, pass) values(?s, ?s)",$_POST["login"], $_POST["password"]);
            $data = $db->getCol('SELECT id FROM user WHERE login=?s',$_POST["login"]);
            $_SESSION["isloggedin"] = true;
            $_SESSION["userid"] = $data[0];
            $_SESSION["role"] = "user";
            $_SESSION["username"] = $_POST["login"];
            $_SESSION["alert"] = array("Вы успешно зарегистрировались", "success");
        }
    }
}

if(isset($_GET["a"]) and $_GET["a"] == "logout") {
    if(isset($_SESSION["alert"])) {
        $alert = $_SESSION["alert"];
    }
    $_SESSION = array();
    if(isset($alert)) {
    $_SESSION["alert"] = $alert;
    }
    $_SESSION["alert"] = array("Выход выполнен", "success");
}

header("Location: {$_SERVER['HTTP_REFERER']}");

?>