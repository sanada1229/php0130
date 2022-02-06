<?php
//1. POSTデータ取得
$syoseki = $_POST['syoseki'];
$url = $_POST['url'];
$hyouka = $_POST['hyouka'];
$naiyou = $_POST['naiyou'];


//2. DB接続します
//以下を関数化！
require_once('funcs.php');
$pdo = db_conn();

//３．SQL文を用意(データ登録：INSERT)
$stmt = $pdo->prepare(
  "INSERT INTO gs_bm_table(id,書籍名,書籍URL,書籍評価,書籍コメント,登録日時)
  VALUES( NULL, :syoseki, :url, :hyouka, :naiyou, sysdate() )"
);

// 4. バインド変数を用意
$stmt->bindValue(':syoseki', $syoseki, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':url', $url, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':hyouka', $hyouka, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':naiyou', $naiyou, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)

// 5. 実行
$status = $stmt->execute();

//6．データ登録処理後
if($status==false){
    sql_error($stmt);
  }else{
   redirect('index.php');
  }