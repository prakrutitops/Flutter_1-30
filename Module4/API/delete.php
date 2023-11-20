<?php

    include('connect.php');
    
    $id=$_POST["id"];
   
    
    $sql="Delete from products where id = '$id'";
    
    
    
    if(mysqli_query($con,$sql))
    {
        echo 'deleted succesfully';
    }
    else
    {
        echo 'something went wrong';
    }

?>