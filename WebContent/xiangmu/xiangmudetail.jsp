<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String keyid=(String)request.getParameter("keyid");
DBO db=new DBO();
String sql="";
ResultSet rs=null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>


<LINK href="<%=request.getContextPath()%>/images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/tinyTips.css" />
<title>��Ŀ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<body >



<form name="form" action="<%=request.getContextPath()%>/xiangmu/selectall" method="post" >
<div class=formzone>
<DIV class=searchzone>

<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>��Ŀ�鿴</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��Ŀ����:</td>
     <td >${xmmc}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>������:</td>
     <td >${fzr}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>��Ŀ�׶�:</td>
     <td >${xmjd}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >${gs}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����ʱ��:</td>
     <td >${lxsj}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >${js}</td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�û�:</td>
     <td >${yh}</td>
	 
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

��Ŀ��� 
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1 bordercolor="#33CCCC" id="table1">
  <TBODY id="table2">
 
				 		<tr align="center" bgcolor="#ebf0f7">

 <td width="9%" height="25" >�������</td>

</tr>

			
					<%
					
					sql="select * from xmbg where xm='"+keyid+"'";
					rs=db.query(sql);
					if(rs!=null){
					while(rs.next()){
					%>
                  	  <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>

 <td height="24" ><%=rs.getString("bgnr")%></td>


</tr>

                 <%
				 }
				 }
				 %>

    </TBODY></TABLE>

��Ŀ�м�
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1 bordercolor="#33CCCC" id="table1">
  <TBODY id="table2">
 
				 		<tr align="center" bgcolor="#ebf0f7">

 <td width="9%" height="25" >�м�����</td>

 <td width="9%" height="25" >ʱ��</td>

</tr>

			
					<%
					
						sql="select * from xmzj where xm='"+keyid+"'";
					rs=db.query(sql);
					if(rs!=null){
					while(rs.next()){
					%>
                  	  <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>

 <td height="24" ><%=rs.getString("zjnr")%></td>

 <td height="24" ><%=rs.getString("sj")%></td>

</tr>

                 <%
				 }
				 }
				 %>

    </TBODY></TABLE>
��Ŀ���� 
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1 bordercolor="#33CCCC" id="table1">
  <TBODY id="table2">
 
				 		<tr align="center" bgcolor="#ebf0f7">

 <td width="9%" height="25" >����˵��</td>

 <td width="9%" height="25" >ʱ��</td>
 <td width="9%" height="25" >��ע</td>

</tr>

			
					<%
					
					sql="select * from xmjx where xm='"+keyid+"'";
					rs=db.query(sql);
					if(rs!=null){
					while(rs.next()){
					%>
                  	  <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>

 <td height="24" ><%=rs.getString("jxsm")%></td>

 <td height="24" ><%=rs.getString("sj")%></td>
 <td height="24" ><%=rs.getString("bz")%></td>

</tr>

                 <%
				 }
				 }
				 %>

    </TBODY></TABLE>

</div>    <input type="hidden" name="xmid" value="${xmid}">
<DIV class=adminsubmit> 
                      <input type="submit" value="����" style="width:60px" name="chanel" class="button" />
</div>
</div>
</form>



${msg}

</body>
</html>

