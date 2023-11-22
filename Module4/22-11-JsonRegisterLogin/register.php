<?php

    include('connect.php');
    
    $fname = $_POST["firstname"];
    $lname = $_POST["lastname"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    
    if($fname=="" && $lname=="" && $email=="" && $password=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into info2 (firstname,lastname,email,password) values ('$fname','$lname','$email','$password')";
        
       mysqli_query($con,$sql);
    }
    
     
        mysqli_close($con);

?>