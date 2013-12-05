<?php include 'include/header.php' ?>
<link href="<?php echo base_url('assets/css/signin.css') ?>" rel="stylesheet">
  <div class="container">

    <div class="row">
      <div class="form-signin">

        <legend>Please Sign In</legend>

        <?php if (isset($error) && $error): ?>
          <div class="alert alert-danger alert-dismissable">
            <a class="close" data-dismiss="alert" href="#">×</a>Incorrect Username or Password!
          </div>
        <?php endif; ?>

        <?php echo form_open('login/login_user') ?>

        <input type="text" id="email" class="form-control" name="email" placeholder="Email Address">
        <input type="password" id="password" class="form-control" name="password" placeholder="Password">

        <button type="submit" name="submit" class="btn btn-info btn-block">Sign in</button>
        <br><br>
        <p align="center"><a class="btn btn-success" href="<?php echo site_url('login/register') ?>">  Sign up!  </a>
        <a href="£">  Forget Your Password?</a></p>

        </form>
      </div>
    </div>
  </div>

<?php include 'include/footer.php' ?>