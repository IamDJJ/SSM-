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
<title>项目中检管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

</head>


<body>

<form name="form" action="" method="post" >
<table class="border" width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td height="565" align="center" valign="top" class="bg_low"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center" valign="middle" class="bgtop"><font color=""><b>项目中检列表</b></font> </td>
      </tr>
    </table>
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1  bordercolor="#33CCCC">
  <TBODY>
 
				  <tr align="center" bgcolor="#ebf0f7">
			  <td>序号 </td>
			
					         <td width="9%" height="25"><strong>项目</strong></td>
			
					         <td width="9%" height="25"><strong>中检内容</strong></td>
			
					         <td width="9%" height="25"><strong>用户</strong></td>
			
					         <td width="9%" height="25"><strong>时间</strong></td>
      
                <th>操作</th>
              </tr>
			
					
	  <c:forEach items="${mylist}" var="mymap" varStatus="status">  
              <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>
			          <td  align="center" height="28" >${status.count}</td>
			  
					        <td  align="center" height="28">${mymap.xmmc}</td>
					        <td  align="center" height="28">${mymap.zjnr}</td>
					        <td  align="center" height="28">${mymap.yh}</td>
					        <td  align="center" height="28">${mymap.sj}</td>
					
                <td ><a href="<%= request.getContextPath()%>/xmzj/del?keyid=${mymap.xmzjid}"  onClick="javascript:if(confirm('是否删除')){return true;} else{return false;}">删除</a>|
<a href="<%= request.getContextPath()%>/xmzj/modify?keyid=${mymap.xmzjid}"  >修改</a></td>


              </tr>
			  
			  </c:forEach> 
	

    </TBODY></TABLE></td></tr></table>
</DIV>


</div>
</form>


    ${msg}



</body>

</html>
