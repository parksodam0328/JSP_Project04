<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center>
<form method="post" action="seatResult.jsp">
<div width="300px" valign="middle">
분단 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<select name="seat">
  		<option value="1분단">1분단</option>
  		<option value="2분단">2분단</option>
  		<option value="3분단">3분단</option>
  		<option value="4분단">4분단</option>
	 </select>
</div><br>
<div width="300px" valign="middle">
학생 수&nbsp;&nbsp;&nbsp;
<input type="text" name="student">
</div>
<br><br>
<div width="300px" valign="middle">
<input type="submit" value="자리바꾸기">
</div>
</form>
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>