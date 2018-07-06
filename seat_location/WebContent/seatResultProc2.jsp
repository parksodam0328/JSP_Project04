<%@page import="java.util.Collections"%>
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
	int[] resNum = new int[str.length];
	for(int i=0;i<str.length;i++){
		resNum[i] = i+1;  
	}
	/* Random rand = new Random();
	int[] resNum = new int[str.length];
	for(int i=0;i<str.length;i++){
		resNum[i] = rand.nextInt(str.length)+1;  
		for(int j=0;j<i;j++){
			if(resNum[i]==resNum[j]){
				i--;
			}
		}
	}  */
	String[] num = request.getParameterValues("decisive");
	int divid = Integer.parseInt(request.getParameter("divideNum"));
	ArrayList<Integer> res1 = new ArrayList<Integer>();
	ArrayList<Integer> res2 = new ArrayList<Integer>();
	for(int i=0;i<resNum.length;i++){
		res1.add(resNum[i]);
	}
	for(int i=0;i<res1.size();i++){
		System.out.print(res1.get(i)+" ");
	}
	System.out.println();
	for(int i=0;i<num.length;i++){
		res2.add(Integer.parseInt(num[i]));
	}
	for(int i=0;i<res2.size();i++){
		System.out.print(res2.get(i)+" ");
	}
	System.out.println();
	Collections.sort(res2);
	
	System.out.println();
	for(int i=0;i<res1.size();i++){
		for(int j=0;j<res2.size();j++){
		if(res1.get(i).equals(res2.get(j))){
			res1.remove(res1.get(i));
			//break;
		}
		}
	}
	Collections.shuffle(res1); // list 정렬
	for(int i=0;i<res1.size();i++){
		System.out.print("랜덤 : "+res1.get(i)+" ");
	}
	%>
	<center><br><br>
	<table id="bun" width="300px" height="50px" style="background-color:#47c83e; text-align:center"><tr><td>교탁</td></tr></table>
	<br><br><br>
	<table height="100%">
		<tr>
	<%for(int i=0;i<res1.size();i++){%>
	
		
		<%
			if((i+1)%(divid*2)==0) {%> <td width="100px" height="100px" style="border:1px solid #000000;" align="center"><%=res1.get(i) %></td>
		</tr>
		<tr>
	<%	
			}else if((i+1)%2==0){%>
		<td width="100px" height="100px" style="border:1px solid #000000;" align="center"><%=res1.get(i) %></td><td width="10px"></td><td width="10px"></td>
			<% }else{%>
		<td width="100px" height="100px" style="border:1px solid #000000;" align="center"><%=res1.get(i) %></td>
	
	<%}

		}
%>
</tr>
</table>
</center>
</center>
<br><br><br><br><br>
</body>
</html>