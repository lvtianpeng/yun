<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>��̨������</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>admin/images/style.css" rel="stylesheet" type="text/css"> 
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "����";
	font-size: 12px;
	color: #333333;
	background-color: #2286C2;
}
-->
</style>
</head>
<script type="text/javascript">
function check()
{
	if(document.form1.oldpwd.value=="")
	{
		alert("����������룡");
		document.form1.oldpwd.focus();
		return false;
	}
	if(document.form1.newpwd.value=="")
	{
		alert("�����������룡");
		document.form1.newpwd.focus();
		return false;
	} 
	if(document.form1.repwd.value=="")
	{
		alert("��ȷ�����룡");
		document.form1.repwd.focus();
		return false;
	}
	if(document.form1.repwd.value!=document.form1.newpwd.value)
	{
		alert("�Բ���������������벻��ͬ����ȷ�����룡");
		document.form1.repwd.focus();
		return false;
	}
}
</script>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
			message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(basePath+"/error.jsp");
	}
	else{ 
%>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td height="2">&nbsp;</td>
  </tr>
  <tr>
	<td background="<%=basePath %>admin/images/index1_45.gif"></td>
	<td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
	  <table width="100%" border="0" cellspacing="10" cellpadding="0">
		<tr>
		  <td>
			<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C4E7FB">
			  <tr>
				<td>
				  <table width="100%" border="0" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
					<tr>
					  <td class="font2">&nbsp;�û��������</td>
					</tr>
				  </table>
				</td>
			  </tr>
			</table>
		  </td>
		</tr>
		<tr>
		  <td>
<form action="<%=basePath %>AdminServlet?method=uppwd" method="post" name="form1" onSubmit="return check()">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <TBODY> 
    <TR bgColor=#FFFFFF>
      <TD width="45%" align=right height="23" class="font1">�� �� �룺</TD>
      <TD align=left class="font1"><input type="password" name="oldpwd" size="20" maxlength=16></TD> 
    </TR> 
    <TR bgColor=#FFFFFF>
      <TD width="45%" align=right height="23" class="font1">�� �� �룺</TD>
      <TD align=left class="font1"><input type="password" name="newpwd" size="20" maxlength=16></TD> 
    </TR> 
    <TR bgColor=#FFFFFF>
      <TD width="45%" align=right height="23" class="font1">ȷ�����룺</TD>
      <TD align=left class="font1"><input type="password" name="repwd" size="20" maxlength=16></TD> 
    </TR> 
    <TR bgColor=#FFFFFF>
      <TD colspan=2 align=center height="23" class="font1">
      <input type="submit" value="ȷ��">&nbsp;&nbsp;<input type="reset" value="����"></TD> 
    </TR> 
  </TBODY>
</TABLE>
</form>
</td>
		</tr> 
	  </table>
	</td>
	<td background="images/index1_47.gif"></td>
  </tr>
  <tr>
	<td width="8" height="8"><img src="images/index1_91.gif" width="8" height="8" /></td>
	<td background="images/index1_92.gif"></td>
	<td width="8" height="8"><img src="images/index1_93.gif" width="8" height="8" /></td>
  </tr>
</table>
</body>
<%} %>
</HTML>
