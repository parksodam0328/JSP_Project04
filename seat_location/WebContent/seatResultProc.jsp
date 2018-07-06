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
	String divide = request.getParameter("seat");
	int divide_num = Integer.parseInt(divide.substring(0,1));
	int num = Integer.parseInt(request.getParameter("student"));
	/* Random rand = new Random();
	int[] resNum = new int[num];
	for(int i=0;i<num;i++){
		resNum[i] = rand.nextInt(num)+1;  
		for(int j=0;j<i;j++){
			if(resNum[i]==resNum[j]){
				i--;
			}
		}
	} */
	int[] resNum = new int[num];
	for(int i=0;i<num;i++){
		resNum[i] = i+1; 
	}%>
	
	<center><br><br>
	<table width="300px" height="50px" style="background-color:#47c83e; text-align:center"><tr><td>교탁</td></tr></table>
	<br><br><br>
	<form method="post" action="seatResult2.jsp">
	<%for(int i=0;i<resNum.length;i++){ %>
	<input type="hidden" name="test" value=<%= resNum[i] %> />
	<%} %>

	<input type="hidden" name="divideNum" value="<%=divide_num %>">
	<table width="70%" height="100%" style="border-spacing:30px 30px;">
		<tr>
	<%for(int i=0;i<num;i++){%>
	
		
		<td width="100px" height="100px" style="border:1px solid #000000;" align="center"><input type="checkbox" name="decisive" value="<%=resNum[i] %>"><%=resNum[i] %></td>

		<%if((i+1)%(divide_num*2)==0){%>
		</tr>
		<tr>
	<%		}
		}
%>
</tr>
<tr>
<td td colspan="<%=divide_num*2%>" align="center"><input type="checkbox" name="decisive" value="<%=0 %>">결원 인원 없음</td>
</tr>
<tr>
<td colspan="<%=divide_num*2%>" align="center">
<input type="submit" value="결원인원 체크 후 최종결과 보기">
</td>
</tr>
</table>
</form>
</center>
<br><br><br><br><br>
</body>
</html>