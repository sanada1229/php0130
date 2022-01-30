<?php
//insert.phpの処理を持ってくる
//1. POSTデータ取得
$syoseki = $_POST['syoseki'];
$url = $_POST['url'];
$hyouka = $_POST['hyouka'];
$naiyou = $_POST['naiyou'];
$id = $_POST['id'];


//2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

//３．データ更新SQL作成（UPDATE テーブル名 SET 更新対象1=:更新データ ,更新対象2=:更新データ2,... WHERE id = 対象ID;）
$stmt = $pdo->prepare(
  "UPDATE gs_bm_table SET 
  syoseki=:syoseki, url=:url, hyouka=:hyouka, naiyou=:naiyou, indate=sysdate() 
  WHERE id=:id"
);

  
// 4. バインド変数を用意
  $stmt->bindValue(':syoseki', $syoseki, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
  $stmt->bindValue(':url', $url, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
  $stmt->bindValue(':hyouka', $hyouka, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
  $stmt->bindValue(':naiyou', $naiyou, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
  $stmt->bindValue(':id', $id, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)

  
 // 5. 実行
  $status = $stmt->execute();

//４．データ登録処理後
if($status==false){

    sql_error($stmt);
}else{

    redirect('select.php');

}