<?php
    ini_set('display_errors','Off');
    require_once("sql.php");
    require_once("tpl.php");
    session_start();

    $tpl = new Template("templates/");
    $db = new SafeMySQL(array('user' => 'h133006_root', 'pass' => 'ADminium-12', 'db' => 'h133006_db', 'charset' => 'utf8'));
    
    $tpl->set("isloggedin", isset($_SESSION["isloggedin"]));
    if(isset($_SESSION["isloggedin"])) {
        $tpl->set("role", $_SESSION["role"]);
    }
    $tpl->set("curpage", "start-page");

    if(!isset($_GET["a"])) {
        $tpl->set("curpage", "start-page");
        $tpl->set("curbase", "start");
        $tpl->display("start");
    }
    else {

        if($_GET["a"] == "login") {

            if(isset($_SESSION["isloggedin"])) {
                header("Location: /digitalbreak");
            }

            $tpl->set("curpage", "login-page");
            $tpl->set("curbase", "start");
            $tpl->display("start");

        } else if($_GET["a"] == "register") {

            if(isset($_SESSION["isloggedin"])) {
                header("Location: /digitalbreak");
            }

            $tpl->set("curpage", "register-page");
            $tpl->set("curbase", "start");
            $tpl->display("start");

        } else if($_GET["a"] == "test") {

            if(!isset($_GET["id"])) {
                $data = $db->getCol('SELECT id FROM task WHERE status=?s',"released");
                $id = $data[rand(0, count($data)-1)];
                header("Location: /digitalbreak/?a=test&id=".$id);
            }

            $tpl->set("curpage", "test-page");
            $tpl->set("curbase", "main");
            $tpl->set("taskid", $_GET["id"]);
            $tpl->display("main");

        } else if($_GET["a"] == "test-res") {
            if(isset($_GET["res"])) {
                $res = unserialize($_GET["res"]);
                $tpl->set("res", $res);
            }

            $tpl->set("curpage", "test-res-page");
            $tpl->set("curbase", "main");
            $tpl->set("taskid", $_GET["id"]);
            $tpl->display("main");

        } else if($_GET["a"] == "addtask") {

            if(!isset($_SESSION["isloggedin"])) {
                header("Location: /digitalbreak/?a=login");
            }

            $tpl->set("curpage", "addtask-page");
            $tpl->set("curbase", "start");
            $tpl->display("start");

        } else if($_GET["a"] == "task") {

            if(isset($_GET["id"])) {
                $tpl->set("curpage", "task-page");
                $tpl->set("curbase", "main");
                $tpl->set("taskid", $_GET["id"]);
                $tpl->display("main");
            } else {
                header("Location: /digitalbreak");
            }
            

        } else if($_GET["a"] == "lk") {

            if(!isset($_SESSION["isloggedin"])) {
                header("Location: /digitalbreak/?a=login");
            }


                $tpl->set("curpage", "lk-page");
                $tpl->set("curbase", "main");
                $tpl->display("main");
  
            

        } else {

            $tpl->set("curpage", "start-page");
            $tpl->set("curbase", "start");
            $tpl->display("start");

        }
    }

    
?>