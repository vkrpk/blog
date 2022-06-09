<?php

$pdo = require_once __DIR__.'/database/database.php';
$authDAO =  require_once __DIR__.'/database/security.php';
$currentUser = $authDAO->isLoggedIn();

$sessionId = $_COOKIE['session'];
if ($sessionId) {
    $authDAO->logout($sessionId);
    header('Location: /');
}
