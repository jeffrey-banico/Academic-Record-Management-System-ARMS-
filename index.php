<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="./img/MNHS.png" type="image/x-icon" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="./bootstrap-5.2.1-dist/css/bootstrap.css" />
    <title>Mababangbaybay National High School</title>
  </head>

  <body>
    <div class="landing-page">
      <div class="title-section">
        <h1 class="title-name text-center">
          Mababangbaybay National High School
        </h1>
      </div>
      <div class="btn-section">
        <button class="btn-landing-page" id="student">Student</button>
        <button class="btn-landing-page" id="teacher">Teacher</button>
        <button class="btn-landing-page" id="admin">Administrator</button>
      </div>
    </div>
    <script src="./bootstrap-5.2.1-dist/js/bootstrap.js"></script>
    <script type="text/javascript">
      document.getElementById("student").onclick = function () {
        location.href = "Student/student-login.php";
      };
      document.getElementById("teacher").onclick = function () {
        location.href = "Teacher/teacher-login.php";
      };
      document.getElementById("admin").onclick = function () {
        location.href = "Admin/admin-login.php";
      };
    </script>
  </body>
</html>
