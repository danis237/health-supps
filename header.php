<style>
#searchResult{
 list-style: none;
 padding: 0px;
 width: 250px;
 position: absolute;
 margin: 0;
}

#searchResult li{
 background: lavender;
 padding: 4px;
 margin-bottom: 1px;
}

#searchResult li:nth-child(even){
 background: cadetblue;
 color: white;
}

#searchResult li:hover{
 cursor: pointer;
}

</style>
<div id="top" >                                         <!--Top Bar Start-->
    <div class="container">                               <!--Container Start-->
      <div class="col-md-6 offer">                        <!--col-md-6 Start-->
        <a href="shop-guest.php" class="btn btn-success btn-sm" >
          Welcome Guest
        </a> <!--using bootstrap's btn and btn-success class and making the button small with btn-sm class-->
        <!--Bootstrap classes- https://www.w3schools.com/bootstrap/bootstrap_ref_all_classes.asp-->


      </div><!--col-md-6 End-->

      <div class="col-md-6"><!--The Top menu on the left---->
        <ul class="menu">
          <li>
            <a href="register.php">Register Here</a>
          </li>
          </li>
          <li>
            <a href="login.php">Login</a>
          </li>
      </div>

    </div><!--Container End-->
  </div><!--Top Bar End-->


  <div class="navbar navbar-default" id="navbar"> <!--navbar Start-->
    <div class="container"> <!--navbar container start-->
      <div class="navbar-header"> <!--navbar header start-->
        <a class="navbar-brand home" href="index.php">
          <img src="images/logo.jpg" alt="logo" class="hidden-xs"> <!--hidden xs hides the logo when screen is extra small-->
          <img src="images/logoShort.jpg" alt="logo" class="visible-xs">
        </a>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
          <span class="sr-only">Toggle Navigation</span>
          <i class="fa fa-align-justify"></i> <!--Icon taken and copy pasted from https://fontawesome.com/icons/align-justify?style=solid-->
        </button>


      </div><!--navbar header end-->

      <div class="navbar-collapse collapse" id="navigation"> <!--navbar start--> <!--bootstrap nav classes= https://getbootstrap.com/docs/4.3/components/navbar/-->
        <div class="padding-nav"> <!--padding nav start-->
          <ul class="nav navbar-nav navbar-left" id="ulnav">
            <li  >
              <a href="index.php">Home</a>
            </li>

            <li >
              <a href="shop-guest.php">Shop</a>
            </li>

            <li>
              <a href="contactus-guest.php">Contact Us</a>
            </li>
            <li>

              <input class="form-control mr-sm-2"  style='margin-top:10px' type="search" placeholder="Search Products" id='txt_search'  name="search"  aria-label="Search">
				  <ul id="searchResult"></ul>

            </li>

          </ul>
        </div><!--padding nav end-->


      </div> <!--navbar collapse end-->
    </div> <!--navbar container end-->

  </div><!--navbar default end-->
<script>
  $(document).ready(function(e){
    $('.searched').click(function(e){
      var searched = $(".search").val();
      $.ajax({
        url:'characteristic.php',
        type:'post',
        data:{'searched':searched},
        dataType:'html',
        beforeSend:function(){
          $.preloader.start({
            modal: true,
            src: 'javascript/loader.svg'
          });
        },
        success:function(response){

         // alert(response);
         $('.old').hide();
         $('.section').html(response);
          $.preloader.stop();
        }
      });
    });
  });


  </script>
