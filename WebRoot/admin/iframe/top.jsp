<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>admin/images/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<%String username=(String)session.getAttribute("user"); %>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" background="<%=basePath %>admin/images/header_bg.jpg" border=0>
  <TR height=56>
    <TD width=260><IMG height=56 src="<%=basePath %>admin/images/header_left.jpg" width=260></TD>
    <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px" align="center">当前用户：<%=username %> &nbsp;&nbsp; 
	<A style="COLOR: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="<%=basePath%>AdminServlet?method=adminexit" target=_top>退出系统</A> 
    </TD>
    <TD align=right width=268><IMG height=56 src="<%=basePath %>admin/images/header_right.jpg" width=268></TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><TR bgColor=#1c5db6 height=4><TD></TD></TR></TABLE>
</BODY>
</HTML>