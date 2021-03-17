
<h1>Mariadb</h1>
<?php
$pdo = new PDO('mysql:dbname=mysql;host=mariadb', 'root', 'not_very_secret', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

$query = $pdo->query('SHOW VARIABLES like "version"');

$row = $query->fetch();

echo 'MySQL version:' . $row['Value'];
?>
<hline/>

<?php phpinfo();?>

