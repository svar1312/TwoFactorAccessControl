<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
                <%@page import="java.util.*"%>
                <%@ include file="connect.jsp"%>
                <%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
                <%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
                <%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
                <%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All End Users</title>
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
.style9 {
	color: #0000FF;
	font-weight: bold;
}
.style15 {font-size: 30px; color: #0066CC; font-weight: bold; }
.style16 {
	font-size: 24px;
	font-weight: bold;
}
.style33 {color: #FFFFFF}
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
        <h1 class="style15">Fine-Grained Two-Factor Access Control </br>for
          Web-Based Cloud Computing Services</h1>
        <p class="style1">&nbsp;</p>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li class="active"><a href="CloudLogin.jsp"><span>Cloud Server</span></a></li>
          <li><a href="TrusteeLogin.jsp"><span>Trustee</span></a></li>
          <li><a href="AuthorityLogin.jsp"><span>Authority</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a>
		 <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a>
		  <a href="CloudMain.jsp"><img src="images/slide3.jpg" width="960" height="360" alt=""/></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style16">View All Cloud Transactions </h2>
          <div class="clr"></div>
          <div class="img">
            <div class="post_content">
             
                
               <table width="966" border="1" align="center">
  <tr>
    <td width="159" height="31" bgcolor="#FF00FF" class="style19"><div align="center" class="style33 style24"><span class="style3">User Name </span></div></td>
      <td width="216" bgcolor="#FF00FF" class="style19"><div align="center" class="style33 style24"><span class="style3">File Name </span></div></td>
   
    <td width="162" bgcolor="#FF00FF" class="style19"><div align="center" class="style33 style24"><span class="style3">Operation</span></div></td>
    <td width="188" bgcolor="#FF00FF" class="style19"><div align="center" class="style33 style24"><span class="style3">Date & Time</span></div></td>
  </tr>

<%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        
          
      		
      		 
      		
      		String query="select * from Transaction "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
	
		%>

  <tr>
    <td height="29"><div align="center"><em><strong><%=s2%></strong></em></div></td>
    <td><div align="center"><em><strong><%=s3%></strong></em></div></td>
    
	 <td><div align="center"><em><strong><%=s5%></strong></em></div></td>
	  <td><div align="center"><em><strong><%=s6%></strong></em></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</table>
              
            </div>
          </div>
          </div>
      </div>
      <a href="CloudMain.jsp" class="style9"></a>
      <div class="clr">
     
        <p align="left">&nbsp;</p>
        <div align="left"><br/>
        </div>
        <p align="center"><a href="CloudMain.jsp" class="style9 style2"> Back</a></p>
      </div>
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
