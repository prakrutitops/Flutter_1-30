<?php

    include('connect.php');
    
    $pname = $_POST["p_name"];
    $pprice = $_POST["p_price"];
    $pdes = $_POST["p_des"];
    
    if($pname=="" && $pprice=="" && $pdes=="")
    {
        echo '0';
    }
    else
    {
        $sql ="insert into products (p_name,p_price,p_des) values ('$pname','$pprice','$pdes')";
        
       mysqli_query($con,$sql);
    }
    
     
        mysqli_close($con);

?>