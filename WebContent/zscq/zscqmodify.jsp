<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String lx=(String)request.getAttribute("lx");
String cgjb=(String)request.getAttribute("cgjb");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>


<LINK href="<%=request.getContextPath()%>/images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/tinyTips.css" />
<title>֪ʶ��Ȩ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript">
function checkDo(){
if(form.cqmc.value==""){
alert("��Ȩ���Ʋ���Ϊ��");
return false;
form.cqmc.focus();
}

if(form.lx.value==""){
alert("���Ͳ���Ϊ��");
return false;
form.lx.focus();
}

if(form.fj.value==""){
alert("��������Ϊ��");
return false;
form.fj.focus();
}

if(form.nr.value==""){
alert("���ݲ���Ϊ��");
return false;
form.nr.focus();
}

if(form.cqjb.value==""){
alert("��Ȩ������Ϊ��");
return false;
form.cqjb.focus();
}

if(form.ytcg.value==""){
alert("���гɹ�����Ϊ��");
return false;
form.ytcg.focus();
}

if(form.djr.value==""){
alert("�Ǽ��˲���Ϊ��");
return false;
form.djr.focus();
}

if(form.djsj.value==""){
alert("�Ǽ�ʱ�䲻��Ϊ��");
return false;
form.djsj.focus();
}


form.action="<%=request.getContextPath()%>/zscq/update";
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
    <TD height=30>֪ʶ��Ȩ�޸�</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��Ȩ����:</td>
     <td ><input type="text"   name="cqmc" placeholder="�����Ȩ����"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${cqmc}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >
	  <select name="lx">
	 <%
	 DBO db=new DBO();
	 String sql="select * from leixing ";
	 ResultSet rs=db.query(sql);
	 while(rs.next()){
	 %>
	 <option value="<%=rs.getString("lx")%>" <%
	 if(rs.getString("lx").equals(lx)) out.println("selected");
	 %>><%=rs.getString("lx")%></option>
	 
	 
	 <% }%>
	 </select>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td ><input type="text"   name="fj" placeholder="���븽��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${fj}"    /> 
	 <iframe id="ifr" name="ifr" width="400" height="40" frameborder="no" scrolling="no" src="<%=request.getContextPath()%>/zscq/fileupload.jsp?kname=fj"></iframe><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>����:</td>
     <td >
	 	 	 <textarea name="nr"  cols="80" rows="5">${nr}</textarea>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>��Ȩ����:</td>
     <td > 	 <select name="cqjb">
	 <%
	 
	  sql="select * from cqjb ";
	  rs=db.query(sql);
	 while(rs.next()){
	 %>
	 <option value="<%=rs.getString("jb")%>" <%
	 if(rs.getString("jb").equals(cqjb)) out.println("selected");
	 %>><%=rs.getString("jb")%></option>
	 
	 
	 <% }%>
	 </select><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>���гɹ�:</td>
     <td >
	 	 <textarea name="ytcg"  cols="80" rows="5">${ytcg}</textarea>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�Ǽ���:</td>
     <td ><input type="text"   name="djr" placeholder="����Ǽ���"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${djr}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	         <tr>
     <td align=middle width=30% height=30>�Ǽ�ʱ��:</td>
     <td ><input type="text"   name="djsj" placeholder="����Ǽ�ʱ��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="${djsj}"    /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
  	     <input type="hidden" name="zscqid" value="${zscqid}">
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

