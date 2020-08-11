<?php 
/* Configure Database */
     $conn = 'mysql:dbname=cdf_bursary;host=127.0.0.1;'; //database name
     $user = 'root'; // your mysql user 
     $password = ''; // your mysql password
     //  Create a PDO instance that will allow you to access your database
     try {
     $db = new PDO($conn, $user, $password);
     }

    catch(PDOException $e) {
        echo("PDO error occurred");
    }

    catch(Exception $e) {
        echo("Error occurred");
    }

?>



