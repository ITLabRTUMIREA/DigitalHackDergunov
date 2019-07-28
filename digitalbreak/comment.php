<?
require_once("sql.php");
session_start();

$db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
if(!isset($_POST["a"])) {
    header("Location: /digitalbreak");
}

if($_POST["a"] == "add") {
    if(isset($_SESSION["isloggedin"])) {
        if(isset($_POST["body"]) and $_POST["body"] != "" and isset($_POST["taskid"]) and $_POST["taskid"] != "") {

            $db->query("INSERT INTO comment (userid, taskid, body) values(?i, ?i, ?s)",$_SESSION["userid"], $_POST["taskid"], $_POST["body"]);
        }
    }
}

header("Location: {$_SERVER['HTTP_REFERER']}");

?>