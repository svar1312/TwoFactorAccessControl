<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%> <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authority Main</title>
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
.style7 {
	color: #0000FF;
	font-weight: bold;
}
.style8 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style13 {
	font-size: 18px;
	color: #FF0000;
}
.style15 {color: #FF0000; font-weight: bold; font-size: 18px; }
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
        <h1 class="style8">Fine-Grained Two-Factor Access Control </br>for
          Web-Based Cloud Computing Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="CloudLogi.jsp"><span>Cloud Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Trustee</span></a></li>
          <li class="active"><a href="AuthorityLogin.jsp"><span>Authority</span></a></li>
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
          <h2 class="style7">Confirm Upload Data </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style6">
		  
		   <%

      	try 
	{
			String keys = "ef50a0ef2c3e3a5f";
			String oname="Attribute Issuing Authority";
	
      		String file=request.getParameter("t42");
      		String cont=request.getParameter("text2");
      		String mac =request.getParameter("t4");
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
			Cipher encoder = Cipher.getInstance("RSA");
			KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
//				System.out.println("PUBLIC KEY" + pub);
		
				String pk = String.valueOf(pub);
				String rank="0";
				
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
			
				String acc="No";
				String SKey="No";
				
				Statement st=connection.createStatement();
	
				String user="Data Authority";
				String task="Upload";
				
				String strQuery2 = "insert into transaction(user,fname,sk,task,dt) values('"+user+"','"+file+"','"+SKey+"','"+task+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery2);
				
				st.executeUpdate("insert into  cloudserver(fname,ct,trapdoor,sk,rank,dt,Access) values ('"+file+"','"+cont+"','"+mac+"','"+SKey+"','"+rank+"','"+dt+"','"+acc+"')"); 
				st.executeUpdate("insert into  authorityfile(fname,ct,trapdoor,sk,rank,dt,Access) values ('"+file+"','"+cont+"','"+mac+"','"+SKey+"','"+rank+"','"+dt+"','"+acc+"')"); 			
				
      		
	
%>
		  <p><h2>Data Uploaded Successfully !!!</h2></p><br />
		<p>  <a href="AuthorityMain.jsp">BACK</a></p>

		  <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
	
		  
		  
		  
		  </h2>
          <div class="img"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AuthorityMain.jsp">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
         
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
