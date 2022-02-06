<?php
// SESSIONスタート
session_start();

// SESSIONのidを取得
$sid = session_id();
echo $sid;
// SESSION変数
$_SESSION["name"] = "眞田";
$_SESSION["age"] = 36;
$_SESSION["from"] = "栃木";
?>