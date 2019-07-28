<?
require_once("sql.php");
session_start();

$db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
if(!isset($_POST["a"])) {
    header("Location: /digitalbreak");
}

if($_POST["a"] == "add" and isset($_POST["id"]) and $_POST["id"]!="") {
    $data = $db->getRow('SELECT * FROM task WHERE id=?i',$_POST["id"]);
    
    $gvals = array(false,false,false,false,false); 

    if(isset($_POST["ch0"])) {
        $gvals[$_POST["ch0"]] = true;
    }

    if(isset($_POST["ch1"])) {
        $gvals[0] = true;
    }
    if(isset($_POST["ch2"])) {
        $gvals[1] = true;
    }
    if(isset($_POST["ch3"])) {
        $gvals[2] = true;
    }
    if(isset($_POST["ch4"])) {
        $gvals[3] = true;
    }
    if(isset($_POST["ch5"])) {
        $gvals[4] = true;
    }


    $vals = array();

    $answers = unserialize($data["answers"]);

    for ($x=0; $x<count($answers); $x++) {
        if( $answers[$x][0] == 1) {
            $vals[$x] = 1;
            if($gvals[$x] != true) {
                $vals[$x] = 2;
            }
        } else {
            if($gvals[$x] == true) {
                $vals[$x] = 3;
            }
        }
    }
    header("Location: /digitalbreak/?a=test-res&id=".$_POST["id"]."&res=".serialize($vals)."&answs=".serialize($gvals));
}





if($_POST["a"] == "next") {
    $data = $db->getCol('SELECT id FROM task WHERE status=?s',"released");
    $id = $data[rand(0, count($data)-1)];
    header("Location: /digitalbreak/?a=test&id=".$id);
}

?>