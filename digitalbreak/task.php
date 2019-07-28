<?
require_once("sql.php");
session_start();

$db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
if(!isset($_POST["a"])) {
    header("Location: /digitalbreak");
}

if($_POST["a"] == "add") {
    if(isset($_SESSION["isloggedin"])) {
        if(isset($_POST["tags"]) and isset($_POST["body"]) and isset($_POST["answ1"]) and isset($_POST["answ2"]) and isset($_POST["answ3"]) and isset($_POST["answ4"]) and isset($_POST["answ5"]) ) {

            $tags = explode(", ", $_POST["tags"]);
            $answers = array();
            if($_POST["answ1"] != "") {
                $answer = array((isset($_POST["ch1"]) and $_POST["ch1"] == "yes"), $_POST["answ1"]);
                $answers[] = $answer;
            }
            if($_POST["answ2"] != "") {
                $answer = array((isset($_POST["ch2"]) and $_POST["ch2"] == "yes"), $_POST["answ2"]);
                $answers[] = $answer;
            }
            if($_POST["answ3"] != "") {
                $answer = array((isset($_POST["ch3"]) and $_POST["ch3"] == "yes"), $_POST["answ3"]);
                $answers[] = $answer;
            }
            if($_POST["answ4"] != "") {
                $answer = array((isset($_POST["ch4"]) and $_POST["ch4"] == "yes"), $_POST["answ4"]);
                $answers[] = $answer;
            }
            if($_POST["answ5"] != "") {
                $answer = array((isset($_POST["ch5"]) and $_POST["ch5"] == "yes"), $_POST["answ5"]);
                $answers[] = $answer;
            }

            $db->query("INSERT INTO task (userid, body, tags, answers, status) values(?i, ?s, ?s, ?s, ?s)", $_SESSION["userid"], $_POST["body"], serialize($tags), serialize($answers), "moderating");
            $_SESSION["alert"] = array("Вопрос отправлен на модерацию", "success");
        }
    }
}


if($_POST["a"] == "remoderate") { 

    if(isset($_SESSION["isloggedin"]) and $_SESSION["role"] == "moderator" and isset($_POST["id"])) {
        $db->query('UPDATE task SET status=?s WHERE id = ?i;',"remoderating",$_POST["id"]);
        $_SESSION["alert"] = array("Вопрос отправлен на ремодерацию", "success");
    }

}

if($_POST["a"] == "release") { 

    if(isset($_SESSION["isloggedin"]) and $_SESSION["role"] == "moderator" and isset($_POST["id"])) {
        $db->query('UPDATE task SET status=?s WHERE id = ?i;',"released",$_POST["id"]);
        $_SESSION["alert"] = array("Вопрос добавлен в систему", "success");
    }

}

if($_POST["a"] == "block") { 

    if(isset($_SESSION["isloggedin"]) and $_SESSION["role"] == "moderator" and isset($_POST["id"])) {
        $db->query('UPDATE task SET status=?s WHERE id = ?i;',"blocked",$_POST["id"]);
        $_SESSION["alert"] = array("Вопрос удален из системы", "success");
    }

}

if($_POST["a"] == "remoderate-req") { 

    if(isset($_SESSION["isloggedin"]) and isset($_POST["id"])) {
        $db->query('UPDATE task SET remoderateRequests=remoderateRequests+1 WHERE id = ?i;',$_POST["id"]);
        $_SESSION["alert"] = array("Запрос на модерацию отправлен", "success");
    }

}

header("Location: {$_SERVER['HTTP_REFERER']}");

?>