<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
DBO db=new DBO();
String   cqmc="",lx="",fj="",nr="",cqjb="",ytcg="",djr="",djsj="";
String keyid=(String)request.getParameter("keyid");
String sql="select * from zscq where zscqid="+keyid;
ResultSet rs=null;
db.open();
rs=db.query(sql);

/*
֪ʶ��Ȩ��Ϣ�鿴ҳ��
*/
if(rs.next()){
 cqmc=rs.getString("cqmc");//������ֵ����Ȩ����
lx=rs.getString("lx");//������ֵ������
fj=rs.getString("fj");//������ֵ������
nr=rs.getString("nr");//������ֵ������
cqjb=rs.getString("cqjb");//������ֵ����Ȩ����
ytcg=rs.getString("ytcg");//������ֵ�����гɹ�
djr=rs.getString("djr");//������ֵ���Ǽ���
djsj=rs.getString("djsj");//������ֵ���Ǽ�ʱ��

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
    <TD height=30>֪ʶ��Ȩ��ϸ��Ϣ</TD>
    <TD align=right colSpan=2>&nbsp;</TD>
  </TR></TBODY></TABLE></DIV>
<div class=tablezone>
<div class=noticediv id=notice></div>
<TABLE cellSpacing=0 cellPadding=2 width="100%" align=center border=0>
  <TBODY>

		<tr >
<td align=middle width=100 height=30>��Ȩ����</td><td height=30><%=cqmc%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>����</td><td height=30><%=lx%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>����</td><td height=30><a href="down.jsp?filename=<%=fj%>">����</a></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>����</td><td height=30><%=nr%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>��Ȩ����</td><td height=30><%=cqjb%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>���гɹ�</td><td height=30><%=ytcg%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�Ǽ���</td><td height=30><%=djr%></td>
 
</tr>
<tr >
<td align=middle width=100 height=30>�Ǽ�ʱ��</td><td height=30><%=djsj%></td>
 
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
