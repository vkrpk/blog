<?php

// $dns = 'mysql:host=eu-cdbr-west-02.cleardb.net;dbname=heroku_3411905a033b8e9';
// $user = 'b12d599e5af3c0';
// $pwd = 'c83d637a';
$dbconfig = parse_ini_file(".env");

try {
    $pdo = new PDO("mysql:host=" . $_ENV["HOST"] . ";dbname=" . $_ENV["DBNAME"], $_ENV["USER"], $_ENV["PASSWD"], [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);
} catch (PDOException $e) {
    echo "ERROR: " . $e->getMessage();
}

return $pdo;
