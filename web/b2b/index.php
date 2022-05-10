<?php
   class MyDB extends SQLite3 {
      function __construct() {
         $this->open('ecommerce.db');
      }
   }

   $db = new MyDB();
   if(!$db) {
      echo $db->lastErrorMsg();
   } else {
      echo nl2br("Opened database successfully\n\n\n");
   }

   $sql =<<<EOF
      SELECT * from produits;
EOF;

   $ret = $db->query($sql);
   while($row = $ret->fetchArray(SQLITE3_ASSOC) ) {
      echo nl2br("ID JOUET : ". $row['id'] . " \n ");
      echo nl2br("NOM DU JOUET : ". $row['nom'] ."\n");
      echo nl2br("QUANTITE DISPONIBLE : ". $row['quantite'] ."\n");
      echo nl2br("\n");
   }
   
   echo "Operation done successfully\n";
   $db->close();
?>