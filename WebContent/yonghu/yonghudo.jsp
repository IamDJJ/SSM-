<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
/*
�û���Ӻ�̨
*/
DBO db=new DBO();//��ʼ���ݿ�����
request.setCharacterEncoding("gb2312");//�����ַ���
ResultSet rs=null;//���������
	String keyid =(String)request.getParameter("keyid");
String yhm=(String)request.getParameter("yhm");//����:�û���
String mm=(String)request.getParameter("mm");//����:����
String xm=(String)request.getParameter("xm");//����:����
String xy=(String)request.getParameter("xy");//����:ѧԺ
String QQ=(String)request.getParameter("QQ");//����:QQ
String dh=(String)request.getParameter("dh");//����:�绰
String xb=(String)request.getParameter("xb");//����:�Ա�
String nl=(String)request.getParameter("nl");//����:����

String sql="";//����sql

int row=1;///����ִ�н��
		 mm=StaticMethod.MD5(mm);
		int num=0;
try{

sql="select count(1) as num from yonghu where yhm='"+yhm+"'";

rs=db.query(sql);

if(rs.next()){
num=rs.getInt("num");
}
if(num>0){

out.println("<script>");
out.println("alert('����ʧ��,�û����ظ�');");
out.println("window.location='zhuce.jsp'");
out.println("</script>");
return;
}



 sql="insert into yonghu(yhm,mm,xm,xy,QQ,dh,xb,nl) values('"+yhm+"','"+mm+"','"+xm+"','"+xy+"','"+QQ+"','"+dh+"','"+xb+"','"+nl+"')";
;//�û�SQL ���
	
		//int row =0;
		row=db.update(sql);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='../login.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='zhuce.jsp'");
out.println("</script>");
}
db.close();
%>

