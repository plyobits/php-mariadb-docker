
<h1>Mariadb (PDO)</h1>
<?php
$pdo = new PDO('mysql:dbname=mysql;host=mariadb', 'root', 'not_very_secret', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$query = $pdo->query('SHOW VARIABLES like "version"');

$row = $query->fetch();

echo 'MySQL version:' . $row['Value'];
?>

<h1>Mariadb (mysqli)</h1>
<?php
$conn = new mysqli("mariadb", "root", "not_very_secret", "mysql");

$query = $conn->query('select version()');

$row = $query->fetch_row();

echo 'MySQL version:' . $row[0];
?>

<hline/>

<?php phpinfo();?>

