<?php

    include('connect.php');
    
    $id=$_POST["id"];
    $pname = $_POST["p_name"];
    $pprice = $_POST["p_price"];
    $pdes = $_POST["p_des"];

    
    $sql="Update products set p_name='$pname',p_price='$pprice',p_des='$pdes' where id='$id'";
    
    if(mysqli_query($con,$sql))
    {
        echo 'updated succesfully';
    }
    else
    {
        echo 'something went wrong';
    }

?>