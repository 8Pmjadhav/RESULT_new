<?php
include_once 'config.php';


// Check if the request method is POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    // Retrieve the data from the POST request
    $year = $_POST["year"];
    $sem = $_POST["sem"];
    $branch = $_POST["branch"];
    $reg_no = $_POST["reg_no"];

    // Do something with the data (for example, you can save it to a database)

    $sql_info = "SELECT * FROM `stu_info` WHERE `Reg.No.` LIKE '$reg_no'";
    $info = mysqli_query($conn, $sql_info);
    $row_info = mysqli_fetch_assoc($info);

    $sql_subjects = "SELECT * FROM `subjects` WHERE `Year` = '$year' AND `Sem` = '$sem' AND `Department` LIKE '$branch'";  
    $subjects = mysqli_query($conn, $sql_subjects);
    $row_subjects = mysqli_fetch_assoc($subjects);

    $sql_grades = "SELECT * FROM `all_stu` WHERE `Year` = '$year' AND `Sem` = '$sem' AND `Reg.No.` LIKE '$reg_no'";
    $grades = mysqli_query($conn,$sql_grades);
    $row_grades = mysqli_fetch_assoc($grades);

    if($row_info === NULL || $row_subjects===NULL || $row_grades===NULL){
        $response = [
            "flag" => 0,
        ];
    } else {
        $response = [
            "flag" => 1,
            "status" => "success",
            "info" => [
                "name" => $row_info['Name'],
                "year" => $year,
                "sem" => $sem,
                "branch" => $branch,
                "reg_no" => $reg_no
            ],
            "subjects" => $row_subjects,
            "grades" => $row_grades
        ];
    }
    // For demonstration purposes, let's just echo the received data in JSON format
    

    // Send the JSON response
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    // If the request method is not POST, return an error response
    header('Content-Type: application/json');
    echo json_encode(["status" => "error", "message" => "Invalid request method"]);
}

?>
