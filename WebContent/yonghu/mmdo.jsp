<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>

<%
DBO db=new DBO();
request.setCharacterEncoding("gb2312");
ResultSet rs=null;
String sql="";
int row=1;
String qx="";


if(session.getAttribute("qx")!=null){
qx=(String)session.getAttribute("qx");
}
//	String keyid=(String)request.getParameter("keyid"); 
		String keyid =(String)request.getParameter("keyid");

String mm1=(String)request.getParameter("mm1");//����
 mm1=StaticMethod.MD5(mm1);
/*
.ѧԱ�޸ĺ�̨ҳ��


*/	
 if(qx.equals("����Ա")){
 sql="update gly set mm='"+mm1+"' where glyid='"+keyid+"'";
 }else{
  sql="update yonghu set mm='"+mm1+"' where yhid='"+keyid+"'";
 }


 //int row=0;

try{
		System.out.println(sql);
			
		 row=db.update(sql);
}catch(Exception e){
System.out.println(e.toString());}
if(row==1){
out.println("<script>");
out.println("alert('�����ɹ�');");
out.println("window.location='mm.jsp'");
out.println("</script>");
}else{
out.println("<script>");
out.println("alert('����ʧ��');");
out.println("window.location='mm.jsp'");
out.println("</script>");
}
db.close();
%>

