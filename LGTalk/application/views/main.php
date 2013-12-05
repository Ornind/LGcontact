<?php include 'include/header.php'; ?>

  <link href="<?php echo base_url('assets/css/modal.css') ?>" rel="stylesheet">

  
  <div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container-fluid">

      <!-- User Info -->
      <div class="row well userInfo">
        <div class="span1">
          <img src="../../assets/img/avatars/<?php echo $avatar ?>.png" alt="" class="img-rounded">
        </div>
        <div class="span2 userInfoSpan2">
          <p><strong> <?php echo $name ?> </strong></p>
          <span class=" badge badge-warning">
            <span class="totalMessageCount"><?php echo $post_count ?></span> messages
            <i class="glyphicon glyphicon-globe"></i>
          </span>
        </div>
        <div class="span4 userInfoSpan2">
          <p id="pTagline" contenteditable="true"><em><?php echo $tagline ?></em></p>
        </div>
        <div class="userTeamBadge">
          จำนวนเพื่อน: <span class="badge badge-info"><?php echo $teamId ?></span>
        </div>
      </div>

          <ul class="nav nav-tabs">
            <li><h2><strong> LGTALK <i class="glyphicon glyphicon-comment"></i>&nbsp;</strong></h2></li>
            <li><a href="#home" data-toggle="tab"><h4><i class="glyphicon glyphicon-home" onmouseover="mouseoversound1.playclip()"></i>&nbsp; หน้าหลัก </h4></a></li><li></li>
            <li><a href="#contact" data-toggle="tab"><h4><i class="glyphicon glyphicon-th-list" onmouseover="mouseoversound2.playclip()"></i>&nbsp; จัดการรายชื่อ </h4></a></li><li></li>
            <li><a href="#group" data-toggle="tab"><h4><i class="icon-group" onmouseover="mouseoversound3.playclip()"></i>&nbsp; จัดการกลุ่ม </h4></a></li><li></li>
          </ul>

            <li class="divider-vertical"></li>
         
			<div class="btn-group pull-right">
              <a class="btn btn-danger" href="<?php echo base_url() ?>index.php/login/logout_user"><i class="glyphicon glyphicon-share"></i> Logout</a>
			</div>
          </div>
		  <div id="container" align="center">
		  
			<form  method="post" accept-charset="utf-8" action="<?php echo site_url("main/show_main"); ?>" style='float:right;'>
				<select id="sel_health" name="health">
				<option value="" selected="selected">--เลือกประโบคสุขภาพ--</option>
				<?php
				$time = $this->typeTextModel->getHealth();
				foreach ($time as $row)
				{
				?>
					<option value="<?=$row->Sentence?>"><?=$row->Sentence?></option>
				<?php } ?>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</select>
			</form>
			<form  method="post" accept-charset="utf-8" action="<?php echo site_url("main/show_main"); ?>" style='float:right;'>
				<select id="sel_money" name="money">
				<option value="" selected="selected">--เลือกประโบคการเงิน--</option>
				<?php
				$time = $this->typeTextModel->getMoney();
				foreach ($time as $row)
				{
				?>
					<option value="<?=$row->Sentence?>"><?=$row->Sentence?></option>
				<?php } ?>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</select>
			</form>
			<form  name="types" method="post" accept-charset="utf-8" action="<?php echo site_url("main/show_main"); ?>" style='float:right;'>
				<select id="sel_food" name="food">  <!-- เพิ่ม -->
				<option value="" selected="selected">--เลือกประโบคอาหาร--</option>
				<?php
				$rs = $this->typeTextModel->getRows();
				foreach ($rs as $row)
				{
				?>
					<option value="<?=$row->Sentence?>"><?=$row->Sentence?></option>
				<?php } ?>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</select>
			</form>
			<form  name="types2" method="post" accept-charset="utf-8" action="<?php echo site_url("main/show_main"); ?>" style='float:right;'>
				<select id="sel_time" name="time">
				<option value="" selected="selected">--เลือกประโบคเวลา--</option>
				<?php
				$time = $this->typeTextModel->getTime();
				foreach ($time as $row)
				{
				?>
					<option value="<?=$row->Sentence?>"><?=$row->Sentence?></option>
				<?php } ?>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</select>
			</form>






	
  
	
</div>


		  
      </div>
      <!--/.container-fluid -->
    </div>
    <!--/.navbar-inner -->
  </div>
  <!--/.navbar -->

  

  <div class="container">

    <!-- Left Column -->
    <div class="span5 offset1">

</br></br></br></br></br>
       <!-- Message Box -->
      <div class="span9 row well">
        <textarea class="span8" id="txtNewMessage" name="txtNewMessage"
                  placeholder="พิมพ์ข้อความของคุณที่นี่.." rows="5"></textarea>
        <h6 class="pull-right">เหลืออีก <span id="spanNumChars">320</span> ตัวอักษร</h6>
        <button id="btnPost" class="btn btn-info">ส่งข้อความ</button>
      </div>


      <!-- List of Current User Posts -->
      <?php if ( $max_posts ) : ?>
        <div class="row">
          <h3>ส่งไปแล้ว <span class="messageCount"><?php echo count($posts) ?></span> ข้อความ:</h4>
        </div>

		
        <div class="span9 row well">
          <table id="tblMyMessages" class="table table-condensed table-hover">
            <thead>
            <tr>
              <th class="span2">ข้อความ</th>
              <th class="span1">เวลาส่ง</th>
            </tr>
            </thead>
            <tbody>

            <?php foreach( $posts as $post ) : ?>
              <tr>
                <td><?php echo $post['body'] ?></td>
                <td><?php echo $post['createdDate'] ?></td>
              </tr>
            <?php endforeach; ?>

            </tbody>
          </table>
        </div>
      <?php else : ?>
        <div class="row">
          <h4>You have posted no messages.</h4>
        </div>
      <?php endif; ?>
	  

      </div><!-- row -->
      </div><!-- End Right Column --> 

  </div>
  </div>


  <!-- ****************************************************************** -->
  <!--                        NEW USER Modal Window                       -->
  <!-- ****************************************************************** -->

  <div class="modal hide" id="myModal">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">x</button>
      <h3>New User Details</h3>
    </div>
    <div class="modal-body">
        <p><input type="text" class="span4" name="first_name" id="first_name" placeholder="First Name"></p>
        <p><input type="text" class="span4" name="last_name" id="last_name" placeholder="Last Name"></p>
        <p><input type="text" class="span4" name="email" id="email" placeholder="Email"></p>
        <p>
          <select class="span4" name="teamId" id="teamId">
            <option value="">Team Number...</option>
            <option value="1">1</option>
            <option value="2">2</option>
          </select>
        </p>
        <p>
          <label class="checkbox span4">
            <input type="checkbox" id="isAdmin" name="isAdmin"> Is an admin?
          </label>
        </p>
        <p><input type="password" class="span4" name="password" id="password" placeholder="Password"></p>
        <p><input type="password" class="span4" name="password2" id="password2" placeholder="Confirm Password"></p>
    </div>
    <div class="modal-footer">
      <a href="#" class="btn btn-warning" data-dismiss="modal">Cancel</a>
      <a href="#" id="btnModalSubmit" class="btn btn-primary">Create</a>
    </div>
  </div>
<?php include 'include/footer.php'; ?>