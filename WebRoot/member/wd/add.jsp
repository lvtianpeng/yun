<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>  
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String method=request.getParameter("method"); 
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
 
<script type="text/javascript">
function check()
{
	if(document.form1.mc.value==""||document.form1.fl.value==""||document.form1.bz.value=="")
	{
		alert("全部内容都要填写哦！");
		//document.form1.title.focus(); cp,xh,gm,bz
		return false;
	} 
<%if(!method.equals("upwd2")){%> 
if(document.form1.pic.value=="")
{
	alert("请上传文件！");
	//document.form1.title.focus(); cp,xh,gm,bz
	return false;
} 
<%}%>
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
	
 
	
		String id="";
		String mc="";String fl="";String pic="";String bz="";String gx="";  
		if(method.equals("upwd2")){
			id=request.getParameter("id");
			List wzlist=cb.get1Com("select * from wd where id='"+id+"'",8);
			mc=wzlist.get(1).toString();
			fl=wzlist.get(2).toString(); 
			pic=wzlist.get(3).toString();
			bz=wzlist.get(4).toString(); 
			gx=wzlist.get(7).toString(); 
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
					  <td class="font2">&nbsp;文件信息管理</td>
					</tr>
				  </table>
				</td>
			  </tr>
			</table>
		  </td>
		</tr>
		<tr>
		  <td>
<form name="form1" action="<%=basePath %>UpServlet" method="post"  enctype="multipart/form-data" onSubmit="return check()">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <tbody> <input type="hidden" name="method" value="<%=method %>" /> 
    <input type="hidden" name="id" value="<%=id %>" />
    <TR bgColor=#ffffff>
      <TD class="font1" height="26" width="35%" align=right>文件名称：</td>
      <TD class="font1" align=left><input type="text" size="50" name="mc" value="<%=mc %>"></td>
    </tr>
    <TR bgColor=#ffffff>
      <TD class="font1" width="35%" align=right height="26">文件分类：</td>
      <TD class="font1" align=left><select name="fl">
    <%if(method.equals("upwd")){ %><option value="<%=fl%>"><%=fl%></option> <%} %> 
    <%List flist=cb.getCom("select * from fl order by id desc",2);if(!flist.isEmpty()){for(int i=0;i<flist.size();i++){List list2=(List)flist.get(i);%>
    <option value=<%=list2.get(1).toString() %>><%=list2.get(1).toString() %></option>
    <%}} %>
    </select></td>
    </tr>
    <TR bgColor=#ffffff>
      <TD class="font1" width="35%" align=right height="26">上传文件：</td>
      <TD class="font1" align=left><input name="pic" type="file"   size="50"  ></td>
    </tr>  
    <tr bgColor=#ffffff>
      <td class="font1" width="35%" height="23" align=right>文件介绍：</td>
      <td class="font1" align=left><textarea name="bz" cols="50" rows="8"><%=bz%></textarea></td>
    </tr>  
    <TR bgColor=#ffffff>
      <TD class="font1" width="35%" align=right height="26">共享文件：</td>
      <TD class="font1" align=left><select name="gx">
    <%if(method.equals("upwd2")){ %><option value="<%=gx%>"><%=gx%></option> <%} %>
    <option value="否">否</option>   
    <option value="是">是</option> 
    </select></td>
    </tr> 
    <tr bgColor=#ffffff>
      <td class="font1" colspan="2" height="23" align=center><input type="submit" value="确定提交"  ></td>
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
 
 