<?php

    $pdo = new PDO('sqlite:ecommerce.db');
    $statement = $pdo->query("SELECT * FROM ecommerce");
    $ecommerce = $statement->fetchALL(PDO::FETCH_ASSOC);
    print_r($ecommerce);

?>