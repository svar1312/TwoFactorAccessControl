<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>End User Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 14px}
.style1 {	font-size: 35px;
	color: #0066CC;
	font-weight: bold;
}
.style7 {
	color: #0000FF;
	font-weight: bold;
}
.style8 {font-size: 30px}
.style9 {color: #FF0000}
.style10 {font-size: 18px}
.style11 {font-size: 18}
.style12 {font-weight: bold; color: #0066CC;}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="logo">
        <h1 class="style1 style8">Fine-Grained Two-Factor Access Control </br>for
          Web-Based Cloud Computing Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Cloud Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Trustee</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Authority</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> 
		<a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a>
		 <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style7">Download Files </h2>
          <p>&nbsp;</p>
          <form action="Download1.jsp" method="post" >
            <table width="524" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              <tr>
                <td width="192" bgcolor="#A6EDFF"><span class="style1 style9 style12 style11"><span class="style10 style9">Enter File Name </span></span></td>
                <td width="240"><span class="style15">
                  <label>
                  <input required name="t1"
			type="text"  size="40" />
                  </label>
                </span></td>
              </tr>
              <tr>
                <td width="192" bgcolor="#A6EDFF"><span class="style1 style12 style11 style9"><span class="style1 style10">Enter Owner Name  </span></span></td>
                <td width="240"><span class="style15">
                  <label>
                  <input name="t22" type="text"  size="40" value="<%out.println("Authority");%>" readonly/>
                  </label>
                </span></td>
              </tr>
              
              <tr>
                <td bgcolor="#A6EDFF"><span class="style12"></span></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><div align="right">
                  <input name="Submit" type="submit" class="style9"
			value="Req Crediantial" />
                </div></td>
              </tr>
            </table>
          </form>
          </p>
          <div class="clr"><a href="UserMain.jsp" class="style10">Back</a></div>
        </div>
        
        </div>
      
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2>Cloud Computing</h2>
        <p align="justify" class="style2">CLOUD COMPUTING is a virtual host computer system 
          that enables enterprises to buy, lease, sell, or distribute 
          software and other digital resources over the internet as an ondemand 
          service. It no longer depends on a server or a number 
          of machines that physically exist, as it is a virtual system. </p>
      </div>
      <div class="col c3">
        <h2>ABE</h2>
        <p align="justify"><span class="style2">Attribute-based encryption (ABE) is the 
          cornerstone of attribute-based cryptosystem. ABE enables 
          fine-grained access control over encrypted data using<br />
          access policies and associates attributes with private 
          keys and ciphertexts. Within this context, ciphertext-policy 
          ABE (CP-ABE) allows a scalable way of data encryption 
          such that the encryptor defines the access policy that the 
          decryptor (and his/her attributes set) needs to satisfy to decrypt 
          the ciphertext.</span></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
