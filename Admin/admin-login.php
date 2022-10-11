<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../img/MNHS.png" type="image/x-icon">
    <link rel="stylesheet" href="../style.css">
    <link rel="stylesheet" href="../bootstrap-5.2.1-dist/css/bootstrap.css">
    <title>Mababangbaybay National High School</title>
</head>

<body>
    <div class="pane">
        <div class="login-form">
            <h2 class="form-title">Admin Login</h2>
            <form action="" method="post">
                <div class="form__group field">
                    <input required id="login_username" placeholder="Username" class="form__field" type="input">
                    <label class="form__label" for="username">Username</label>
                </div>
                <div class="form__group field">
                    <input required id="login_password" placeholder="Password" class="form__field" type="password">
                    <label class="form__label" for="password">Password</label>
                </div>
                <div class="form__group field">
                    <a href="../forgot-pass.php" class="forgot-pass">Forgot Password</a>
                </div>
                <div class="form__group field btn-login-form">
                    <button id="btn_login" class="btn-landing-page"> LOGIN
                    </button>
                </div>
            </form>
        </div>
    </div>
    <script src="../bootstrap-5.2.1-dist/js/bootstrap.js"></script>
</body>

</html>