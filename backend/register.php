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

        $hashed_password = hash('sha256',$password);

        $sql = "INSERT INTO `Admin_users` (`Username`, `Password`) VALUES ('$username', '$hashed_password')";
        

        if ($conn->query($sql) === TRUE) {
            $response = [
                "flag" => 1,
                "username" => $username
            ];
        } else {
            $response = [
                "flag" => 0,
                "error" => $conn->error
            ];
        }

        header('Content-Type: application/json');
        echo json_encode($response);
    } else {
        // If the request method is not POST, return an error response
        header('Content-Type: application/json');
        echo json_encode(["status" => "error", "message" => "Invalid request method"]);
    }
   

?>