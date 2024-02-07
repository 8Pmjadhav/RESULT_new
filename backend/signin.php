<?php 
    include_once 'config.php';
    //$hashed_password = "";
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $username = $_POST["username"];
        $password = $_POST["password"];

         //to prevent from mysqli injection  
        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($conn, $username);  
        $password = mysqli_real_escape_string($conn, $password);

        

        $sql = "SELECT * FROM `Admin_users` WHERE `Username` LIKE '$username' ";
        $signin = mysqli_query($conn,$sql);
        $row_signin = mysqli_fetch_assoc($signin);
        $hashed_password = hash('sha256',$password);

        if($row_signin === NULL){
            $response = [
                "flag" => 0,
                "status" => "Failure"
            ];
        } else {
            if($hashed_password === $row_signin['Password']){
                $response = [
                    "flag" => 1,
                    "status" => "success"
                ];
            } else{
                $response = [
                    "flag" => 2,
                    "p1" => $password,
                    "p1h" => $hashed_password,
                    "p2h" => $row_signin['Password'],
                    "status" => "wrong password"
                ];
            }
            
        } 
        header('Content-Type: application/json');
        echo json_encode($response);
    } else {
        // If the request method is not POST, return an error response
        header('Content-Type: application/json');
        echo json_encode(["status" => "error", "message" => "Invalid request method"]);
    }
   

?>