<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String htbh=(String)request.getAttribute("htbh");
String sql="";
ResultSet rs=null;
DBO db=new DBO();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>


<LINK href="<%=request.getContextPath()%>/images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/tinyTips.css" />
<title>��ͬ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<body >



<form name="form" action="<%=request.getContextPath()%>/hetong/selectall" method="post" >
<div class=formzone>
<DIV class=searchzone>

<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>��ͬ�鿴</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��ͬ����:</td>
     <td >${htbt}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>��ͬ���:</td>
     <td >${htbh}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>��ͬ����:</td>
     <td >${htnr}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>���ʱ��:</td>
     <td >${qcsj}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�����:</td>
     <td >${qcr}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�׷�:</td>
     <td >${jf}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�׷���ϵ��ʽ:</td>
     <td >${jflxfs}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�ҷ�:</td>
     <td >${yf}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�ҷ���ϵ��ʽ:</td>
     <td >${yflxfs}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>״̬:</td>
     <td >${zt}</td>
	 
	 </tr>
	    <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><a href="<%=request.getContextPath()%>/hetong/down.jsp?filename=${fj}">����</a></td>
	 
	 </tr>
</TBODY></TABLE>

�����¼

<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1 bordercolor="#33CCCC" id="table1">
  <TBODY id="table2">
 
				 		<tr align="center" bgcolor="#ebf0f7">
 <td width="9%" height="25" >��ͬ���</td>
 <td width="9%" height="25" >���˵��</td>
 <td width="9%" height="25" >ʱ��</td>
 <td width="9%" height="25" >״̬</td>
 </tr>

			
					<%
					
					sql="select * from htbg where htbh='"+htbh+"' ";
					rs=db.query(sql);
					if(rs!=null){
					while(rs.next()){
					%>
                  	  <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>
 <td height="24" ><%=rs.getString("htbh")%></td>
 <td height="24" ><%=rs.getString("bgsmbgr")%></td>
 <td height="24" ><%=rs.getString("sj")%></td>
 <td height="24" ><%=rs.getString("zt")%></td>
</tr>

                 <%
				 }
				 }
				 %>
    </TBODY></TABLE>
</div>    <input type="hidden" name="htid" value="${htid}">
<DIV class=adminsubmit> 
                      <input type="submit" value="����" style="width:60px" name="chanel" class="button" />
</div>
</div>
</form>



${msg}

</body>
</html>

