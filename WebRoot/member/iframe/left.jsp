<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>会员管理中心</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>member/images/css1/left_css.css" rel=stylesheet>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
</HEAD>
<SCRIPT language=JavaScript>
function showsubmenu(sid)
{
	whichEl = eval("submenu" + sid);
	if (whichEl.style.display == "none")
	{
		eval("submenu" + sid + ".style.display=\"\";");
	}
	else
	{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</SCRIPT>
<%
	String member=(String)session.getAttribute("member");  
	if(member==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body bgcolor="16ACFF">
<table width="98%" border="0" cellpadding="0" cellspacing="0" background="<%=basePath %>member/images/tablemde.jpg">
  <tr>
    <td height="5" background="<%=basePath %>member/images/tableline_top.jpg" bgcolor="#16ACFF"></td>
  </tr>
  <tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(<%=basePath %>member/images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
          		<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(1); height=25>用户信息管理</TD>
              </tr>
            </table>            
          </TD>
        </TR>
        <TR>
          <TD>
          <TABLE id=submenu1 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><A href="<%=basePath %>member/info/editpwd.jsp" target="MainFrame">修改登陆密码</A></TD>
                </TR>
                <TR>
                  <TD><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><a href="<%=basePath %>member/info/index.jsp" target="MainFrame">修改详细资料</A></TD>
                </TR> 
              </TBODY>
          </TABLE>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
    </td>
  </tr>
  <tr>
    <td height="5" background="<%=basePath %>member/images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  
  
   
   <tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(<%=basePath %>member/images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
          		<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(4); height=25>共享资源信息</TD>
              </tr>
            </table>            
          </TD>
        </TR>
        <TR>
          <TD>
          <TABLE id=submenu4 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><A href="<%=basePath %>member/gx/index.jsp" target="MainFrame">共享资源信息</A></TD>
                </TR>
                <TR>
                  <TD><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><a href="<%=basePath %>member/gx/s.jsp" target="MainFrame">共享资源查询</A></TD>
                </TR>  
              </TBODY>
          </TABLE>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
    </td>
  </tr>
  <tr>
    <td height="5" background="<%=basePath %>member/images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
  
 
 
  <tr>
    <td>
    <TABLE width="97%" border=0 align=right cellPadding=0 cellSpacing=0 class=leftframetable>
      <TBODY>
        <TR>
          <TD height="25" style="background:url(<%=basePath %>member/images/left_tt.gif) no-repeat">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <TD width="20"></TD>
          		<TD class=STYLE1 style="CURSOR: hand" onclick=showsubmenu(411); height=25>上传资源管理</TD>
              </tr>
            </table>            
          </TD>
        </TR>
        <TR>
          <TD>
          <TABLE id=submenu411 cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width="2%"><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><A href="<%=basePath %>member/wd/index.jsp" target="MainFrame">上传资源管理</A></TD>
                </TR>
                <TR>
                  <TD width="2%"><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><A href="<%=basePath %>member/wd/add.jsp?method=addwd2" target="MainFrame">在线上传资源</A></TD>
                </TR>
                <TR>
                  <TD><IMG src="<%=basePath %>member/images/closed.gif"></TD>
                  <TD height=23><a href="<%=basePath %>member/wd/s.jsp" target="MainFrame">资源信息查询</A></TD>
                </TR>  
              </TBODY>
          </TABLE>
          </TD>
        </TR>
      </TBODY>
    </TABLE>
    </td>
  </tr>
  <tr>
    <td height="5" background="<%=basePath %>member/images/tableline_bottom.jpg" bgcolor="#9BC2ED"></td>
  </tr>
   <!-- 结束 -->
</table>
</body>
<%} %>
</HTML>
