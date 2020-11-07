
<?php
//Code referred from professors database examples and this youtube video:
//https://www.youtube.com/watch?v=NXAHkqiIepc&fbclid=IwAR0aUNUbw0SFZW60E8UaeesWaeB0prZjhdNF2AqLhCZNzDqo6i3WHVvDy3U

//Starting session_start();
// a) Create a connection to database
@$dbhost = "localhost";
@$dbuser = "root";
@$dbpass = "";
@$dbname = "jastej_sehra";

session_start(); // session started.

// b) new connection created
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
// Test if connection succeeded
if (mysqli_connect_errno()) {
    die("Database connection failed:" .
        mysqli_connect_error() .
        "(" . mysqli_connect_errno() . ")"
    );
} //source code from Professors code

//{
    $username = $_POST['username'];
    $password = $_POST['password'];

    echo $username;
    echo $password;

    $query = "select * from usertable where name = '$username' and password = '$password'";
    $result = mysqli_query($connection, $query);
    $num = mysqli_num_rows($result);

    if($num == 1)
    {
        $_SESSION['username'] = $username;
        header('Location:index-member.php');
    }
    else{
        header('Location:wrong-login.php');
        echo "USERNAME DOESNT EXIST";
    }
//}

?>
