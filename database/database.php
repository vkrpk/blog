<?php

$dbconfig = parse_ini_file(".env");

try {
    $pdo = new PDO("mysql:host=" . $dbconfig["HOST"] . ";dbname=" . $dbconfig["DBNAME"], $dbconfig["USER"], $dbconfig["PASSWD"], [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);
} catch (PDOException $e) {
    echo "l'erreur sql est : "+$dbconfig["HOST"];
    echo "ERROR: " . $e->getMessage();
}

return $pdo;
