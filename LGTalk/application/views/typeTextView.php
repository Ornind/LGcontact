<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	
	<title>Welcome to CodeIgniter</title>
	
	

	<style type="text/css">

	::selection{ background-color: #E13300; color: white; }
	::moz-selection{ background-color: #E13300; color: white; }
	::webkit-selection{ background-color: #E13300; color: white; }

	body {
		background-color: #fff;
		margin: 40px;
		font: 13px/20px normal Helvetica, Arial, sans-serif;
		color: #4F5155;
	}

	a {
		color: #003399;
		background-color: transparent;
		font-weight: normal;
	}

	h1 {
		color: #fa9f00;
		background-color: transparent;
		border-bottom: 1px solid #D0D0D0;
		font-size: 19px;
		font-weight: normal;
		margin: 0 0 14px 0;
		padding: 14px 15px 10px 15px;
	}

	code {
		font-family: Consolas, Monaco, Courier New, Courier, monospace;
		font-size: 12px;
		background-color: #f9f9f9;
		border: 1px solid #D0D0D0;
		color: #002166;
		display: block;
		margin: 14px 0 14px 0;
		padding: 12px 10px 12px 10px;
	}

	#body{
		margin: 0 15px 0 15px;
	}
	
	p.footer{
		text-align: right;
		font-size: 11px;
		border-top: 1px solid #D0D0D0;
		line-height: 32px;
		padding: 0 10px 0 10px;
		margin: 120px 0 0 0;
	}
	
	#container{
		margin: 50px;
		height: 280px;
		border: 1px solid #D0D0D0;
		-webkit-box-shadow: 0 0 8px #D0D0D0;
		
}
	}
	</style>
	
	<?php include 'include/header.php' ?>
	<link href="<?php echo base_url('assets/css/navbar.css') ?>" rel="stylesheet">
	<link href="<?php echo base_url('assets/css/custom.css') ?>" rel="stylesheet">
	<script src="<?php echo base_url('assets/js/vendor/jquery-1.9.0.min.js') ?>"></script>
	<script src="<?php echo base_url('assets/js/vendor/bootstrap.min.js') ?>"></script>


	<script>$('.dropdown-toggle').dropdown()</script>
	<script>$('#อาหาร').on('show.bs.dropdown', function () {
		// do something…
		
	})</script>
</head>
<body>





<div id="container" align="center">
	<h1>ประโยคตัวอย่าง</h1>
	<!-- Single button -->
	<div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      อาหาร
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
	<?php
	$rs = $this->typeTextModel->getRows();
	foreach ($rs as $row)
	{
	?>
      <?php echo"<li><a href=\"#\">".$row->Sentence." </a></li>"; ?>
	  <?php } ?>
    </ul>
	
  </div><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

  <div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      เวลา
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
      <?php
	$time = $this->typeTextModel->getTime();
	foreach ($time as $row)
	{
	?>
      <?php echo"<li><a href=\"#\">".$row->Sentence."</a></li>"; ?>
	  <?php } ?>
    </ul>
	
  </div><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  
  <div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    เงิน
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
       <?php
	$money = $this->typeTextModel->getMoney();
	foreach ($money as $row)
	{
	?>
      <?php echo"<li><a href=\"#\">".$row->Sentence."</a></li>"; ?>
	  <?php } ?>
    </ul>
  </div><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  
  <div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      สุขภาพ
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu">
      <?php
	$health = $this->typeTextModel->getHealth();
	foreach ($health as $row)
	{
	?>
      <?php echo"<li><a href=\"#\">".$row->Sentence."</a></li>"; ?>
	  <?php } ?>
    </ul>
  </div><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  
	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
</div>


</body>
</html>