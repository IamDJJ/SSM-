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
<title>��Ŀ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript">
function checkDo(){
if(form.xmmc.value==""){
alert("��Ŀ���Ʋ���Ϊ��");
return false;
form.xmmc.focus();
}

if(form.fzr.value==""){
alert("�����˲���Ϊ��");
return false;
form.fzr.focus();
}

if(form.xmjd.value==""){
alert("��Ŀ�׶β���Ϊ��");
return false;
form.xmjd.focus();
}

if(form.gs.value==""){
alert("��������Ϊ��");
return false;
form.gs.focus();
}

if(form.lxsj.value==""){
alert("����ʱ�䲻��Ϊ��");
return false;
form.lxsj.focus();
}

if(form.js.value==""){
alert("���ܲ���Ϊ��");
return false;
form.js.focus();
}

if(form.yh.value==""){
alert("�û�����Ϊ��");
return false;
form.yh.focus();
}

if(form.zt.value==""){
alert("״̬����Ϊ��");
return false;
form.zt.focus();
}

if(form.fj.value==""){
alert("��������Ϊ��");
return false;
form.fj.focus();
}


form.action="<%=request.getContextPath()%>/xiangmu/add";
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
    <TD height=30>��Ŀ���</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��Ŀ����:</td>
     <td ><input type="text"   name="xmmc" placeholder="������Ŀ����"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value=""  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>������:</td>
     <td ><input type="text"   name="fzr" placeholder="���븺����"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value=""  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>��Ŀ�׶�:</td>
     <td ><input type="text"   name="xmjd" placeholder="������Ŀ�׶�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="����"  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >
	 
	 	 <textarea name="gs" cols="80" rows="5" placeholder="�������"></textarea>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����ʱ��:</td>
     <td ><input type="text"   name="lxsj" placeholder="��������ʱ��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="<%=StaticMethod.getStringDate()%>"  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >
	 
	 	 	 <textarea name="js" cols="80" rows="5" placeholder="�������"></textarea>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�û�:</td>
     <td ><input type="text"   name="yh" placeholder="�����û�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="<%=session.getAttribute("yhm")%>"  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>״̬:</td>
     <td ><input type="text"   name="zt" placeholder="����״̬"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="δ���" readonly=""  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
	 
	     <tr>
     <td align=middle width=30% height=30>�ϴ���ͬ:</td>
     <td ><input type="text"   name="fj" placeholder="���븽��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value=""  /> <iframe id="ifr" name="ifr" width="400" height="40" frameborder="no" scrolling="no" src="<%=request.getContextPath()%>/zscq/fileupload.jsp?kname=fj"></iframe><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
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

