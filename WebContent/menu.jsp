<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");
String qx="";
if(session.getAttribute("qx")!=null){
qx=(String)session.getAttribute("qx");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/css_menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script>
<title>�ޱ����ĵ�</title>

<script language="javascript">


function getObject(objectId) {
 if(document.getElementById && document.getElementById(objectId)) {
 // W3C DOM
 return document.getElementById(objectId);
 }
 else if (document.all && document.all(objectId)) {
 // MSIE 4 DOM
 return document.all(objectId);
 }
 else if (document.layers && document.layers[objectId]) {
 // NN 4 DOM.. note: this won't find nested layers
 return document.layers[objectId];
 }
 else {
 return false;
 }
}

function showHide(objname){
    var obj = getObject(objname);
    if(obj.style.display == "none"){
		obj.style.display = "block";
	}else{
		obj.style.display = "none";
	}
}
</script>
</head>
<base target="main" />
<body>
<div class="infobox">

	
</div>
<div class="menu">


<%
if(qx.equals("����Ա")){
%>
		<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items1');" target="_self">�û�����</a></dt>
    <dd id="items1" style="display:none;">
        <ul>

	<li><a href='yonghu/addPage' target='main'>����û�</a></li>
		<li><a href='yonghu/selectall' target='main'>�û��б�</a></li>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->
<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items2');" target="_self">����Ա����</a></dt>
    <dd id="items2" style="display:none;">
        <ul>

	<li><a href='gly/addPage' target='main'>��ӹ���Ա</a></li>
		<li><a href='gly/selectall' target='main'>����Ա�б�</a></li>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->

<%
}
%>
<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items3');" target="_self">������Ŀ����</a></dt>
    <dd id="items3" style="display:none;">
        <ul>

	<li><a href='hetong/addPage' target='main'>��Ӻ�ͬ</a></li>
	
		<li><a href='hetong/myselectall' target='main'>�ҵĺ�ͬ</a></li>
		
<%
if(qx.equals("����Ա")){
%>
		<li><a href='hetong/selectall' target='main'>��ͬ�б�</a></li>
			<li><a href='htbg/selectall' target='main'>��ͬ����б�</a></li>
			
			<% }%>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->

<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items5');" target="_self">������Ŀ����</a></dt>
    <dd id="items5" style="display:none;">
        <ul>

	<li><a href='xiangmu/addPage' target='main'>�����Ŀ</a></li>
			<li><a href='xiangmu/myselectall' target='main'>�ҵ���Ŀ</a></li>
			
			
<%
if(qx.equals("����Ա")){
%>
		<li><a href='xiangmu/selectall' target='main'>��Ŀ�б�</a></li>
		<% }%>
			<li><a href='xmbg/addPage' target='main'>�����Ŀ���</a></li>
	
		<li><a href='xmbg/selectall' target='main'>��Ŀ����б�</a></li>
		
			<li><a href='xmzj/addPage' target='main'>�����Ŀ�м�</a></li>
		<li><a href='xmzj/selectall' target='main'>��Ŀ�м��б�</a></li>
			<li><a href='xmjx/addPage' target='main'>�����Ŀ����</a></li>
		<li><a href='xmjx/selectall' target='main'>��Ŀ�����б�</a></li>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->

<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items11');" target="_self">֪ʶ��Ȩ����</a></dt>
    <dd id="items11" style="display:none;">
        <ul>

<%
if(qx.equals("����Ա")){
%>
	<li><a href='leixing/addPage' target='main'>�������</a></li>
		<li><a href='leixing/selectall' target='main'>�����б�</a></li>
			<li><a href='cqjb/addPage' target='main'>��Ӳ�Ȩ����</a></li>
		<li><a href='cqjb/selectall' target='main'>��Ȩ�����б�</a></li>
		<% }%>
	<li><a href='zscq/addPage' target='main'>���֪ʶ��Ȩ</a></li>
		<li><a href='zscq/selectall' target='main'>֪ʶ��Ȩ�б�</a></li>
		
				<li><a href='zscq/zscq.jsp' target='main'>֪ʶ��Ȩ��ѯ</a></li>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->


<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items12');" target="_self">���ͳ��</a></dt>
    <dd id="items12" style="display:none;">
        <ul>


	<li><a href='tongji/hetong.jsp' target='main'>��ͬͳ��</a></li>
		<li><a href='tongji/xiangmu.jsp' target='main'>��Ŀͳ��</a></li>
		<li><a href='tongji/zscq.jsp' target='main'>֪ʶ��Ȩͳ��</a></li>
        </ul>
    </dd>
</dl>
<!-- Item 1 End -->

<!-- Item 1 Strat -->
<dl>

<dt><a href="###" onclick="showHide('items13');" target="_self">������Ϣ</a></dt>
    <dd id="items13" style="display:none;">
        <ul>
<%
if(qx.equals("�û�")){
%>
	<li><a href='yonghu/modify.jsp' target='main'>������Ϣ</a></li>
	
	<% }%>
		<li><a href='yonghu/mm.jsp' target='main'>�����޸�</a></li>

        </ul>
    </dd>
</dl>
<!-- Item 1 End -->
</div>
</body>
</html>
