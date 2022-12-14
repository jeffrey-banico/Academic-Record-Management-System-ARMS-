<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="./img/MNHS.png" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="./bootstrap-5.2.1-dist/css/bootstrap.css">
  <title>Mababangbaybay National High School</title>
</head>

<body>
  
  <div class="head">
    <div class="wrapper">
      <h1 class="title">Reset Password</h1>
      <p class="note">You are attempting to reset your password.
        Please enter your security credentials in the textbox provided.<br>
        <b>Note:</b> Once you've make an alteration on your password, don't share it with anybody!
      </p>
      <div class="container">
        <form action="" method="post">
          <div class="forgot-form row">
            <div class="form-field col-lg-6">
              <label for="idnum" class="label">ID Number/Learners Reference Number:</label>
              <input id="idnum" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Uname" class="label">Username:</label>
              <input id="Uname" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Fname" class="label">First Name:</label>
              <input id="Fname" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Q2" class="label">What is your favorite game?</label>
              <input id="Q2" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Mname" class="label">Middle Name:</label>
              <input id="Mname" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Q1" class="label">What is your favorite animal?</label>
              <input id="Q1" class="input-text" type="text" required>
            </div>
            
            <div class="form-field col-lg-6">
              <label for="Lname" class="label">Last Name:</label>
              <input id="Lname" class="input-text" type="text" required>
            </div>

            <div class="form-field col-lg-6">
              <label for="Q3" class="label">What is your favorite subject?</label>
              <input id="Q3" class="input-text" type="text" required>
            </div>

            <div class="forgot-pass-submit">
              <button id="btn_submit">Submit</button>
              <button id="btn_cancel">Cancel</button>
            </div>

        </form>
      </div>
    </div>
  </div>
  </div>
  <script src="../bootstrap-5.2.1-dist/js/bootstrap.js"></script>
  <script type="text/javascript">
      document.getElementById("btn_cancel").onclick = function () {
        location.href = "index.php";
      };
  </script>
</body>

</html>