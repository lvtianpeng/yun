<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"  contentType="text/html;charset=gb2312"%>  
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
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
{ //wldh,mc,xx,fkh,fdz,fdh,skh,sdz,sdh,wlxl,wlcl
	if(document.form1.mc.value==""||document.form1.sm.value==""  )
	{
		alert("ȫ�����ݶ�Ҫ��дŶ��");
		//document.form1.title.focus(); cp,xh,gm,bz
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
	
	String username=(String)session.getAttribute("user"); 
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{  //wldh,mc,xx,fkh,fdz,fdh,skh,sdz,sdh,wlxl,wlcl
	String method=request.getParameter("method"); 
		String id="";
		String mc="";String sm=""; 
		if(method.equals("upfl")){
			id=request.getParameter("id");
			List wzlist=cb.get1Com("select * from fl where id='"+id+"'",3);
			mc=wzlist.get(1).toString();
			sm=wzlist.get(2).toString();  
		}
%>
<BODY  >
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
					  <td class="font2">&nbsp;�ļ��������</td>
					</tr>
				  </table>
				</td>
			  </tr>
			</table>
		  </td>
		</tr>
		<tr>
		  <td>
<form action="<%=basePath%>ComServlet" name="form1" method="post"  onsubmit="return check()">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <tbody> <input type="hidden" name="method" value="<%=method %>" /> 
    <input type="hidden" name="id" value="<%=id %>" />
     
    <TR bgColor=#ffffff>
      <TD class="font1" width="35%" align=right height="26">�������ƣ�</td>
      <TD class="font1" align=left><input type="text" size="50" name="mc" value="<%=mc %>"></td>
    </tr> 
    <TR bgColor=#ffffff>
      <TD class="font1" width="35%" align=right height="26">����˵����</td>
      <TD class="font1" align=left><input type="text" size="50" name="sm" value="<%=sm %>"></td>
    </tr>  
    <tr bgColor=#ffffff>
      <td class="font1" colspan="2" height="23" align=center><input type="submit" value="ȷ���ύ"  ></td>
    </tr> 
  </tbody>
</table>
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
 