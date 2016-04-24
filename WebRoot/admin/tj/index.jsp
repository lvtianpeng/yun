<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"  contentType="text/html;charset=gb2312"%>  
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台操作区</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>admin/images/style.css" rel="stylesheet" type="text/css"> 
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: #2286C2;
}
-->
</style>
</head> 
 <SCRIPT language=JavaScript src="<%=basePath %>admin/images/calendar.js"></SCRIPT>
<script type="text/javascript">
function check()
{ //wldh,mc,xx,fkh,fdz,fdh,skh,sdz,sdh,wlxl,wlcl
	 
	if(document.form1.ksj.value==""||document.form1.esj.value=="")
	{
		alert("输入统计时间段");
		//document.form2.ddid.focus();
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
					  <td class="font2">&nbsp;文件信息统计</td>
					</tr>
				  </table>
				</td>
			  </tr>
			</table>
		  </td>
		</tr>
		<tr>
		  <td>
<form action="<%=basePath%>admin/tj/tinfo.jsp" name="form1" method="post"  onsubmit="return check()">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <tbody>  
    <TR bgColor=#ffffff>
      <TD class="font1" align=center height="26">文件分类： <select name="fl">
    <option value="">全部</option>
    <%List flist=cb.getCom("select * from fl order by id desc",2);if(!flist.isEmpty()){for(int i=0;i<flist.size();i++){List list2=(List)flist.get(i);%>
    <option value=<%=list2.get(1).toString() %>><%=list2.get(1).toString() %></option>
    <%}} %>
    </select> 共享：<select name="gx"> 
    <option value="">全部</option>
    <option value="否">否</option>   
    <option value="是">是</option> 
    </select>  
    <input type=text size=20 name=ksj  readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";>
			 -  <input type=text size=20 name=esj  readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";> 
			 <input type="submit" value="确定提交"  ></td>
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
 