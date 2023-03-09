<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Curtain.aspx.cs" Inherits="Curtain" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Animate a Curtain Opening!</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.js"></script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.easing.1.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $curtainopen = false;
            $(".rope").click(function () {
                $(this).blur();
                if ($curtainopen == false) {
                    $(this).stop().animate({ top: '0px' }, { queue: false, duration: 350, easing: 'easeOutBounce' });
                    $(".leftcurtain").stop().animate({ width: '20px' }, 2000);
                    $(".rightcurtain").stop().animate({ width: '20px' }, 2000);
                    $curtainopen = true;
                } else {
                    $(this).stop().animate({ top: '-40px' }, { queue: false, duration: 350, easing: 'easeOutBounce' });
                    $(".leftcurtain").stop().animate({ width: '50%' }, 2000);
                    $(".rightcurtain").stop().animate({ width: '51%' }, 2000);
                    $curtainopen = false;
                }
                return false;
            });
        });	
    </script>
</head>
<body>
    <div class="leftcurtain">
        <img src="images/frontcurtain.jpg" /></div>
    <div class="rightcurtain">
        <img src="images/frontcurtain.jpg" /></div>
    <%--<h1 class="location">
    <b>New Website Inaugurated By:</b><strong class="location"><b>Mr. Amal Sinha</b></strong></h1>
    <br />
    <h1 class="location">
      <b>CEO,</b><strong class="location"><b>BSES Rajdhani Power ltd.</b></strong></h1><br />
   <h1 class="Name">Date of Inauguration:19-06-2018</h1>--%>
    <div class="special">
   <a href="http://www.bsesdelhi.com/" title="Click Here">
        <h1 class="Name" style="font-size:xx-large;">
        <b>www.bsesdelhi.com</b></h1>
    </a></div>
        <a class="rope" href="#">
        <img src="images/rope.png" />
    </a>
</body>
</html>
