<?php 
include('connect.php');

$sql->dbQuery("delete from reminders where id = '$_GET[id]'");
header('Location:index.php');
?>
