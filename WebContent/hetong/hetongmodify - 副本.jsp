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
<title>��ͬ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript">
function checkDo(){
if(form.htbt.value==""){
alert("��ͬ���ⲻ��Ϊ��");
return false;
form.htbt.focus();
}

if(form.htbh.value==""){
alert("��ͬ��Ų���Ϊ��");
return false;
form.htbh.focus();
}

if(form.htnr.value==""){
alert("��ͬ���ݲ���Ϊ��");
return false;
form.htnr.focus();
}

if(form.qcsj.value==""){
alert("���ʱ�䲻��Ϊ��");
return false;
form.qcsj.focus();
}

if(form.qcr.value==""){
alert("����˲���Ϊ��");
return false;
form.qcr.focus();
}

if(form.jf.value==""){
alert("�׷�����Ϊ��");
return false;
form.jf.focus();
}

if(form.jflxfs.value==""){
alert("�׷���ϵ��ʽ����Ϊ��");
return false;
form.jflxfs.focus();
}

if(form.yf.value==""){
alert("�ҷ�����Ϊ��");
return false;
form.yf.focus();
}

if(form.yflxfs.value==""){
alert("�ҷ���ϵ��ʽ����Ϊ��");
return false;
form.yflxfs.focus();
}

if(form.zt.value==""){
alert("״̬����Ϊ��");
return false;
form.zt.focus();
}


form.action="<%=request.getContextPath()%>/hetong/update";
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
    <TD height=30>��ͬ�޸�</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��ͬ����:</td>
     <td ><input type="text"   name="htbt" placeholder="�����ͬ����"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${htbt}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>��ͬ���:</td>
     <td ><input type="text"   name="htbh" placeholder="�����ͬ���"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${htbh}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>��ͬ����:</td>
     <td ><input type="text"   name="htnr" placeholder="�����ͬ����"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${htnr}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>���ʱ��:</td>
     <td ><input type="text"   name="qcsj" placeholder="�������ʱ��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${qcsj}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�����:</td>
     <td ><input type="text"   name="qcr" placeholder="���������"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${qcr}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�׷�:</td>
     <td ><input type="text"   name="jf" placeholder="����׷�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${jf}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�׷���ϵ��ʽ:</td>
     <td ><input type="text"   name="jflxfs" placeholder="����׷���ϵ��ʽ"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${jflxfs}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�ҷ�:</td>
     <td ><input type="text"   name="yf" placeholder="�����ҷ�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${yf}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�ҷ���ϵ��ʽ:</td>
     <td ><input type="text"   name="yflxfs" placeholder="�����ҷ���ϵ��ʽ"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${yflxfs}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>״̬:</td>
     <td ><input type="text"   name="zt" placeholder="����״̬"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${zt}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	     <input type="hidden" name="htid" value="${htid}">
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

