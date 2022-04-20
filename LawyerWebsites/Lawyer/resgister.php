<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme-assets/css/bootstrap.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>
<div class="container">
<center>
<h2>Lawyer Create New Account</h2>
  
</center>

<form action="/action_page.php" method="post">
  <div class="imgcontainer">
  </div>

  <div class="container">
  <label for="uname"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>


  <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <label for="uname"><b>contact</b></label>
    <input type="text" placeholder="Enter Contact" name="ucontact" required>
    
    <label for="uname"><b>Address</b></label>
    <input type="text" placeholder="Enter Address" name="uaddress" required>

    <label for="uname"><b>Available time</b></label>
    <input type="text" placeholder="Enter Avialable Time" name="uavailable" required>

    <label for="uname"><b>Profile</b></label>
    <input type="file" placeholder="Enter Profile Images" name="filename" required>
<br>
    <label for="uname"><b>Select Service</b></label>
    <select name="txtservice" id="" class="form-control">
        <option value="">Local</option>
    </select>


    <button type="submit">Create</button>
    <a href="login.php">Already Have An account</a>
  </div>

</form>

</div>

</body>
</html>

