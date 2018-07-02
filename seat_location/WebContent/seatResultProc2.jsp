<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리바꾸기</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8"); 
	int r;
	String[] str = request.getParameterValues("test");
	String[] num = request.getParameterValues("decisive");
	int divid = Integer.parseInt(request.getParameter("divideNum"));
	List res1 = new ArrayList();
	for(int i=0;i<str.length;i++){
		res1.add(Integer.parseInt(str[i]));
	}
	for(int i=0;i<res1.size();i++){
		for(int j=0;j<num.length;j++){
		if(res1.get(i).equals(Integer.parseInt(num[j]))){
			res1.remove(i);
		}
		}
	}
	%>
	<center><br><br>
	<table width="300px" height="50px" style="background-color:#47c83e; text-align:center"><tr><td>교탁</td></tr></table>
	<br><br><br>
	<table width="70%" height="100%" style="border-spacing:20px 20px;">
		<tr>
	<%for(int i=0;i<res1.size();i++){%>
	<td width="100px" height="100px" style="border:1px solid #000000; border-spacing:20px 20px;" align="center"><%=res1.get(i) %></td>
		
		<%if((i+1)%(divid*2)==0){%>
		</tr>
		<tr>
	<%		}
		}
%>
</tr>
</table>
</center>
</center>
<br><br><br><br><br>
</body>
</html>