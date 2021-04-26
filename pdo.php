<?php
$username="postgres";
$password="postgres";
$dbname="knex-test";
try{
$conn=new PDO("pgsql:host=localhost;dbname=$dbname",$username,$password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){die("Connection failed: ".$e->getMessage()."\n");}
$stmt=$conn->prepare("SELECT column1,column2 FROM newtable");
$stmt->execute();
$result=$stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($result,JSON_PRETTY_PRINT)."\n";