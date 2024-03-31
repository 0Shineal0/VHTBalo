<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Form</title>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    /* CSS styles */
    body {
      background: #2E3740;
      color: #435160;
      font-family: 'Open Sans', sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .container {
      width: 350px;
      background-color: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      font-family: 'Sofia', cursive;
      color: #6D7781;
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 15px;
      margin-bottom: 20px;
      border: none;
      border-bottom: 1px solid #ccc;
      background-color: #f8f8f8;
      font-size: 16px;
      color: #555;
      outline: none;
    }

    input[type="password"] {
      position: relative;
    }

    .show-password-icon {
      position: absolute;
      right: 10px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      color: #ccc;
    }

    input[type="checkbox"] {
      display: none;
    }

    label {
      position: absolute;
      right: 0;
      bottom: 10px;
      transform: translateX(100%);
      font-size: 14px;
      color: #555;
      cursor: pointer;
    }

    input[type="submit"] {
      width: 100%;
      padding: 15px;
      border: none;
      background-color: #1FCE6D;
      color: #fff;
      font-size: 16px;
      font-weight: bold;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #16aa56;
    }

    .forgot {
      text-align: center;
      margin-top: 20px;
      color: #555;
      font-size: 14px;
      text-decoration: none;
      display: block;
    }

    .forgot:hover {
      color: #6D7781;
    }

    .agree {
      margin-top: 20px;
      display: flex;
      align-items: center;
    }

    .agree input[type="checkbox"] + label {
      margin-right: 5px;
    }

    .agree label {
      font-size: 14px;
      color: #555;
    }
  </style>
</head>
<body>
  <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
  <div class="container">
    <h2>Register</h2>
    <form id="registerForm" action="Register" method="post" onsubmit="return validateForm()">
      <input type="text" name="email" id="email" placeholder="Email Address">
      <input id="pw" type="password" name="password" id="password" placeholder="Password">
      <input type="password" name="repass" id="repass" placeholder="Repeat Password">
      <input type="checkbox" id="showPass" onclick="togglePassVisibility()">
      <input type="submit" value="Register">
    </form>
   <p> <a href="Login" class="link-info">Go back to login</a>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <script type="text/javascript">
    function togglePassVisibility() {
      var repassInput = document.getElementById("repass");
      if (repassInput.type === "password") {
        repassInput.type = "text";
      } else {
        repassInput.type = "password";
      }
    }

    function validateForm() {
      var email = document.getElementById("email").value;
      var password = document.getElementById("pw").value;
      var repass = document.getElementById("repass").value;

      if (email.trim() === "" || password.trim() === "" || repass.trim() === "") {
        swal("Error", "Please fill in all fields", "error");
        return false;
      }

      if (password !== repass) {
        swal("Error", "Passwords do not match", "error");
        return false;
      }

      return true;
    }

    var status = document.getElementById("status").value;
    if (status == "success") {
      swal("Congrats", "Account Created Successfully", "success");
    }
  </script>
</body>
</html>
