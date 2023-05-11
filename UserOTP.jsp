<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@page  import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page  import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> 
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page  import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>OTP Generation</title>
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
.style3 {color: #76a2be}
.style4 {color: #76a2be; font-weight: bold; }
.style1 {	font-size: 35px;
	color: #0066CC;
	font-weight: bold;
}
.style6 {color: #E1E1E1}
.style7 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style8 {
	font-size: 18px;
	color: #FF0000;
}
.style9 {
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
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
        <h1 class="style7">Fine-Grained Two-Factor Access Control </br>for
          Web-Based Cloud Computing Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr">	</div>
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
          <h2><strong>Login Success and Generated Your One Time Password(OTP) for <span class="style8">Two-Factor Authentication
(2FA) </span>!!! Pls Check in Your mobile   </strong></h2>
          <p>&nbsp;</p>
          <div class="img">
            
			
			<% 
					
			       String uname=(String)application.getAttribute("uname"); 
				   
				   try {
		
		
					Random r=new Random();		
					Random r1=new Random();		
					Random r2=new Random();		
			
	    		    String otp=String.valueOf(r.nextInt(1000))+String.valueOf(r1.nextInt(1000))+String.valueOf(r2.nextInt(1000));
		
		
		String sql = "Update user set otp='"+otp+"' where name='"+uname+"' ";
		Statement stmt = connection.createStatement();
        stmt.executeUpdate(sql);

		

		
	} catch (Exception e) {
		out.print(e);
		e.printStackTrace();
	}
				   
			
			%>
			
			
			
          </div>
		  
		  
          <form id="form1" name="form1" method="post" action="OTPCheck.jsp">
            <p>&nbsp;</p>
            <table width="417" border="0">
              <tr>
                <td><span class="style9">Enter Your OTP </span></td>
                <td><input type="password" name="otp" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><p>
                  <input type="submit" name="Submit" value="Login" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </form>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style6">Security Mediated Cryptosystem</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="236" height="245" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify">The  Mediated cryptography 
              was first introduced  as a method to allow immediate 
              revocation of public keys. The basic idea of mediated cryptography 
              is to use an on-line mediator for every transaction. 
              This on-line mediator is referred to a SEM (SEcurity Mediator) 
              since it provides a control of security capabilities. If the SEM 
              does not cooperate then no transactions with the public key 
            are possible any longer. </p>
            <p align="justify">The notion of SEM cryptography was further modified  
              as security mediated certificateless (SMC) cryptography]. In a SMC system, a user has a secret key, public 
              key and an identity. In the signing or decryption algorithm, 
              it requires the secret key and the SEM together. In the 
              signature verification or encryption algorithm, it requires the 
              user public key and the corresponding identity. Since the SEM 
              is controlled by an authority which is used to handle user 
              revocation, the authority refuses to provide any cooperation 
              for any revoked user. Thus revoked users cannot generate 
              signature or decrypt ciphertext. </p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
           <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="CloudLogin.jsp"><span>Cloud Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Trustee</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Authority</span></a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li class="style3"><strong>Attribute-Based Cryptosystem</strong></li>
            <li class="style3"></li>
            <li class="style3"><strong>Security Mediated Cryptosystem</strong></li>
            <li class="style3"></li>
            <li class="style4">Key-Insulated Cryptosystem</a></li>
            <li class="style4"></li>
            <li><span class="style3"><strong>Attribute-Based Signature</strong></span></li>
            <li></li>
            <li><strong>Security Mediated Certificateless Cryptography</strong></li>
            <li></li>
          </ul>
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
