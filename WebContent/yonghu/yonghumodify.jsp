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
<title>�û�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript">
function checkDo(){
if(form.yhm.value==""){
alert("�û�������Ϊ��");
return false;
form.yhm.focus();
}

if(form.mm.value==""){
alert("���벻��Ϊ��");
return false;
form.mm.focus();
}

if(form.xm.value==""){
alert("��������Ϊ��");
return false;
form.xm.focus();
}

if(form.xy.value==""){
alert("ѧԺ����Ϊ��");
return false;
form.xy.focus();
}

if(form.QQ.value==""){
alert("QQ����Ϊ��");
return false;
form.QQ.focus();
}

if(form.dh.value==""){
alert("�绰����Ϊ��");
return false;
form.dh.focus();
}

if(form.xb.value==""){
alert("�Ա���Ϊ��");
return false;
form.xb.focus();
}

if(form.nl.value==""){
alert("���䲻��Ϊ��");
return false;
form.nl.focus();
}


form.action="<%=request.getContextPath()%>/yonghu/update";
form.submit();
}
</script>

<body >


<form name="form" action="" method="post" >
<div class=formzone>
<DIV class=searchzone>

<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>�û��޸�</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>�û���:</td>
     <td ><input type="text"   name="yhm" placeholder="�����û���"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${yhm}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><input type="text"   name="mm" placeholder="��������"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${mm}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><input type="text"   name="xm" placeholder="��������"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${xm}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>ѧԺ:</td>
     <td ><input type="text"   name="xy" placeholder="����ѧԺ"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${xy}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>QQ:</td>
     <td ><input type="text"   name="QQ" placeholder="����QQ"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${QQ}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�绰:</td>
     <td ><input type="text"   name="dh" placeholder="����绰"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${dh}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�Ա�:</td>
     <td ><input type="text"   name="xb" placeholder="�����Ա�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${xb}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><input type="text"   name="nl" placeholder="��������"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${nl}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	     <input type="hidden" name="yhid" value="${yhid}">
</TBODY></TABLE>
</div>
<DIV class=adminsubmit> <input type="button" value="����" name="B1" class="button" style="width:60px" onclick="checkDo()"  />
                      &nbsp;&nbsp;
                      <input type="reset" value="ȡ��" style="width:60px" name="chanel" class="button" />
</div>
</div>
</form>



${msg}







</body>
</html>

