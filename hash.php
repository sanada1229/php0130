<?php
// password_hash('暗号化したいパスワード')
$pw = password_hash('test1', PASSWORD_DEFAULT);
echo $pw;
?>