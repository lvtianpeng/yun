<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>admin/images/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<%
	String username=(String)session.getAttribute("user"); String sf=(String)session.getAttribute("sf"); 
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 background=<%=basePath %>admin/images/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><TR><TD height=10></TD></TR></TABLE>  
      
	  
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(1) href="javascript:void(0);">修改登陆密码</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">修改登陆密码</A></TD></TR>
      
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	   
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(222) href="javascript:void(0);">注册用户管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child222 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
       <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/member/index.jsp" target="MainFrame">注册用户管理</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/member/s.jsp" target="MainFrame">注册用户查询</A></TD></TR>
        <TR height=4><TD colSpan=2></TD>
		</TR>
	  </TABLE>
	   
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(6) href="javascript:void(0);">文件分类管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/fl/index.jsp" target="MainFrame">文件分类管理</A></TD>
		</TR> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/fl/add.jsp?method=addfl" target="MainFrame">登记文件分类</A></TD>
		</TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(67) href="javascript:void(0);">文件信息管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child67 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/wd/index.jsp" target="MainFrame">文件信息管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/wd/s.jsp" target="MainFrame">查询文件信息</A></TD>
		</TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(14) href="javascript:void(0);">共享文件管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child14 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/gx/index.jsp" target="MainFrame">共享文件管理</A></TD>
		</TR> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/gx/s.jsp" target="MainFrame">查询共享文件</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  
	  
	  
	  
	  
	  
	   
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(7) href="javascript:void(0);">文件信息统计</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child7 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/tj/index.jsp" target="MainFrame">文件信息统计</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(13) href="javascript:void(0);">评价信息管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child13 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/pj/index.jsp" target="MainFrame">评价信息管理</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	   
       </TD>
     </TR> 
</TABLE>
</body>
<%} %>
</HTML>
