<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.util.*"%>
<%
request.setCharacterEncoding("gb2312");//����ҳ���ַ���
DBO db=new DBO();//��ʼ�������ݿ���
String sql="select  lx as y,count(1) as num  from zscq where 1=1 group by  lx ";//��ѯ ��ͬsql���
db.open();//�����ݿ�����
ResultSet rs=db.query(sql);//��ѯ���
//��ͬ��Ϣ��ѯ
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ͬ�б�</title>
</head>
<LINK href="../images/style.css" type=text/css rel=stylesheet>
<LINK href="<%=request.getContextPath()%>/images/style.css" type=text/css rel=stylesheet>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/tinyTips.css" />

<body>
<form name="form" action="" method="post" >
<table class="border" width="98%" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td height="565" align="center" valign="top" class="bg_low"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center" valign="middle" class="bgtop"><font color="#FFFFFF"><b>��ͬ�б�</b></font> </td>
      </tr>
    </table>
<TABLE cellSpacing=0 cellPadding=3 width="100%" align=center border=1 bordercolor="#33CCCC" id="table1">
  <TBODY id="table2">
 
				 		<tr align="center" bgcolor="#ebf0f7">
 <td width="9%" height="25" >����</td>
 <td width="9%" height="25" >����</td>

</tr>

			
					<%
					if(rs!=null){
					while(rs.next()){
					%>
                  	  <tr align='center' bgcolor='#FFFFFF' onmouseover='this.style.background="#F2FDFF"' onmouseout='this.style.background="#FFFFFF"'>
 <td height="24" ><%=rs.getString("y")%></td>
 <td height="24" ><%=rs.getString("num")%></td>


</tr>

                 <%
				 }
				 }
				 %>

    </TBODY></TABLE>
	 <span id="spanFirst">��һҳ</span> <span id="spanPre">��һҳ</span> <span id="spanNext">��һҳ</span> <span id="spanLast">���һҳ</span> ��<span id="spanPageNum"></span>ҳ/��<span id="spanTotalPage"></span>ҳ
	</td></tr></table>
	  <script>
      var theTable = document.getElementById("table2");
      var totalPage = document.getElementById("spanTotalPage");
      var pageNum = document.getElementById("spanPageNum");


      var spanPre = document.getElementById("spanPre");
      var spanNext = document.getElementById("spanNext");
      var spanFirst = document.getElementById("spanFirst");
      var spanLast = document.getElementById("spanLast");


      var numberRowsInTable = theTable.rows.length;
      var pageSize = 20;
      var page = 1;


      //��һҳ
     function next() {


          hideTable();


          currentRow = pageSize * page;
          maxRow = currentRow + pageSize;
          if (maxRow > numberRowsInTable) maxRow = numberRowsInTable;
          for (var i = currentRow; i < maxRow; i++) {
              theTable.rows[i].style.display = '';
          }
          page++;


          if (maxRow == numberRowsInTable) { nextText(); lastText(); }
          showPage();
          preLink();
          firstLink();
      }


      //��һҳ
     function pre() {


          hideTable();


          page--;


          currentRow = pageSize * page;
          maxRow = currentRow - pageSize;
          if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
          for (var i = maxRow; i < currentRow; i++) {
              theTable.rows[i].style.display = '';
          }




          if (maxRow == 0) { preText(); firstText(); }
          showPage();
          nextLink();
          lastLink();
      }


      //��һҳ
     function first() {
          hideTable();
          page = 1;
          for (var i = 0; i < pageSize; i++) {
              theTable.rows[i].style.display = '';
          }
          showPage();


          preText();
          nextLink();
          lastLink();
      }


      //���һҳ
     function last() {
          hideTable();
          page = pageCount();
          currentRow = pageSize * (page - 1);
          for (var i = currentRow; i < numberRowsInTable; i++) {
              theTable.rows[i].style.display = '';
          }
          showPage();


          preLink();
          nextText();
          firstLink();
      }


      function hideTable() {
          for (var i = 0; i < numberRowsInTable; i++) {
              theTable.rows[i].style.display = 'none';
          }
      }


      function showPage() {
          pageNum.innerHTML = page;
      }


      //�ܹ�ҳ��
     function pageCount() {
          var count = 0;
          if (numberRowsInTable % pageSize != 0) count = 1;
          return parseInt(numberRowsInTable / pageSize) + count;
      }


      //��ʾ����
     function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>��һҳ</a>"; }
      function preText() { spanPre.innerHTML = "��һҳ"; }


      function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>��һҳ</a>"; }
      function nextText() { spanNext.innerHTML = "��һҳ"; }


      function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>��һҳ</a>"; }
      function firstText() { spanFirst.innerHTML = "��һҳ"; }


      function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>���һҳ</a>"; }
      function lastText() { spanLast.innerHTML = "���һҳ"; }


      //���ر��
     function hide() {
          for (var i = pageSize; i < numberRowsInTable; i++) {
              theTable.rows[i].style.display = 'none';
          }


          totalPage.innerHTML = pageCount();
          pageNum.innerHTML = '1';


          nextLink();
          lastLink();
      }


      hide();
 </script> 
</DIV>


</div>
</form>


</body>
<%
db.close();
%>
</html>
