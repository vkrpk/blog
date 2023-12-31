<?php

$articles = json_decode(file_get_contents('./articles.json'), true);

$dbconfig = parse_ini_file(".env");

$pdo = new PDO("mysql:host=" . $dbconfig["HOST"] . ";dbname=" . $dbconfig["DBNAME"], $dbconfig["USER"], $dbconfig["PASSWD"]);

$statement = $pdo->prepare('
    INSERT INTO article (title, category, content, image) VALUES (:title, :category, :content, :image)
');

foreach ($articles as $article) {
    $statement->bindValue(':title', $article['title']);
    $statement->bindValue(':category', $article['category']);
    $statement->bindValue(':content', $article['content']);
    $statement->bindValue(':image', $article['image']);
    $statement->execute();
}
