<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>


<LINK href="<%=request.getContextPath()%>/images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/tinyTips.css" />
<title>֪ʶ��Ȩ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<body >



<form name="form" action="<%=request.getContextPath()%>/zscq/selectall" method="post" >
<div class=formzone>
<DIV class=searchzone>

<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>֪ʶ��Ȩ�鿴</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��Ȩ����:</td>
     <td >${cqmc}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >${lx}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><a href="<%=request.getContextPath()%>/zscq/down.jsp?filename=${fj}">����</a></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >${nr}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>��Ȩ����:</td>
     <td >${cqjb}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>���гɹ�:</td>
     <td >${ytcg}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�Ǽ���:</td>
     <td >${djr}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�Ǽ�ʱ��:</td>
     <td >${djsj}</td>
	 
	 </tr>
</TBODY></TABLE>
</div>    <input type="hidden" name="zscqid" value="${zscqid}">
<DIV class=adminsubmit> 
                      <input type="submit" value="����" style="width:60px" name="chanel" class="button" />
</div>
</div>
</form>



${msg}

</body>
</html>

