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
<title>��Ŀ�м����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language="javascript">
function checkDo(){
if(form.xm.value==""){
alert("��Ŀ����Ϊ��");
return false;
form.xm.focus();
}

if(form.zjnr.value==""){
alert("�м����ݲ���Ϊ��");
return false;
form.zjnr.focus();
}

if(form.yh.value==""){
alert("�û�����Ϊ��");
return false;
form.yh.focus();
}

if(form.sj.value==""){
alert("ʱ�䲻��Ϊ��");
return false;
form.sj.focus();
}


form.action="<%=request.getContextPath()%>/xmzj/add";
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
    <TD height=30>��Ŀ�м����</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

         <tr>
     <td align=middle width=30% height=30>��Ŀ:</td>
     <td > <select name="xm">
	<option value="">--��ѡ��--</option>
	<%
	String sql="select * from xiangmu where 1=1 and zt='ͨ��'";
	if(session.getAttribute("yhm")!=null){
	sql+=" and yh='"+session.getAttribute("yhm")+"'";
	}	
	DBO db=new DBO();
	ResultSet rs=db.query(sql);
	while(rs.next()){
	%>
	 <option value="<%=rs.getString("xmid")%>"><%=rs.getString("xmmc")%></option>
	 <% }%>
	 </select><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�м�����:</td>
     <td >
	 
	 	 <textarea name="zjnr" cols="80" rows="5" placeholder="�����м�����"></textarea>
<i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>�û�:</td>
     <td ><input type="text"   name="yh" placeholder="�����û�"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="<%=session.getAttribute("yhm")%>"  /><i>	 <font color="red">*</font> </i></li></td>
	 
	 </tr>
         <tr>
     <td align=middle width=30% height=30>ʱ��:</td>
     <td ><input type="text"   name="sj" placeholder="����ʱ��"  class="input" style="FONT-SIZE: 12px; WIDTH: 300px"  value="<%=StaticMethod.getStringDate()%>"  /><i>	 <font color="red">*</font> </i></li></td>
	 
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

