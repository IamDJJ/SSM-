<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String   htbt="",htbh="",htnr="",qcsj="",qcr="",jf="",jflxfs="",yf="",yflxfs="",zt="";
htbh=(String)request.getParameter("htbh");
String sql="select * from hetong where htbh='"+htbh+"'";
ResultSet rs=null;
db.open();
rs=db.query(sql);

/*
��ͬ��Ϣ�鿴ҳ��
*/
if(rs.next()){
 htbt=rs.getString("htbt");//������ֵ����ͬ����
htbh=rs.getString("htbh");//������ֵ����ͬ���
htnr=rs.getString("htnr");//������ֵ����ͬ����
qcsj=rs.getString("qcsj");//������ֵ�����ʱ��
qcr=rs.getString("qcr");//������ֵ�������
jf=rs.getString("jf");//������ֵ���׷�
jflxfs=rs.getString("jflxfs");//������ֵ���׷���ϵ��ʽ
yf=rs.getString("yf");//������ֵ���ҷ�
yflxfs=rs.getString("yflxfs");//������ֵ���ҷ���ϵ��ʽ
zt=rs.getString("zt");//������ֵ��״̬

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<LINK href="../images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="../css/tinyTips.css" />

</head>
<body>
<form name="form" action="" method="post" >
<div class=formzone>
<DIV class=searchzone>

<TABLE height=30 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=30>��ͬ��ϸ��Ϣ</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

		<tr >
<td align=middle width=100 height=30>��ͬ����</td><td height=30><%=htbt%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>��ͬ���</td><td height=30><%=htbh%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>��ͬ����</td><td height=30><%=htnr%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>���ʱ��</td><td height=30><%=qcsj%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�����</td><td height=30><%=qcr%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�׷�</td><td height=30><%=jf%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�׷���ϵ��ʽ</td><td height=30><%=jflxfs%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�ҷ�</td><td height=30><%=yf%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�ҷ���ϵ��ʽ</td><td height=30><%=yflxfs%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>״̬</td><td height=30><%=zt%></td>
 
</tr>

</TBODY></TABLE>
</div>
<DIV class=adminsubmit> 
                      &nbsp;&nbsp;
              <INPUT class="button" type="button" value="����" onClick="history.go(-1)"/> 
</div>
</div>
</form>


</body>
</html>
