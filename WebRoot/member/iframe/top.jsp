<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>member/images/css1/top_css.css" rel="stylesheet" type="text/css">
</HEAD>
<SCRIPT language=javascript>
<!--
var displayBar=true;
function switchBar(obj){
	if (displayBar)
	{
		parent.frame.cols="0,*";
		displayBar=false;
		obj.value="����߹���˵�";
	}
	else{
		parent.frame.cols="195,*";
		displayBar=true;
		obj.value="�ر���߹���˵�";
	}
}
//-->
</SCRIPT>
<SCRIPT language=javascript>		
function out(src){
	if(confirm("ȷ��Ҫ�˳���"))	{
		return true;	
	}
	return false;
}
</SCRIPT>
<body bgcolor="#03A8F6">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="194" height="60" align="center" background="<%=basePath %>member/images/top_logo.jpg"></td>
    <td align="center" style="background:url(<%=basePath %>member/images/top_bg.jpg) no-repeat">
    <table cellspacing="0" cellpadding="0" border="0" width="100%" height="33">
      <tbody>
        <tr>
          <td width="30" align="left"></td>
          <td width="320" align="left">
          <a class="top_link" href="<%=path%>/index.jsp" target="_top">������ҳ</a> 
          <span class="top_link">��</span> 
          <a class="top_link" href="<%=path%>/member/info/editpwd.jsp" target="MainFrame">�޸�����</a>
          <span class="top_link">��</span> 
          <a class="top_link" onclick="return out(this)" href="<%=basePath%>MemberServlet?method=memberexit" target="_top">�˳���¼</a>
          </td>
          <td width="80" align="right" nowrap="nowrap" class="topbar"></td>
          <td class="topbar"> </td>
        </tr>
      </tbody>
    </table>
   </td>
  </tr>
  <tr height="6">
    <td bgcolor="#1F3A65" background="<%=basePath %>member/images/top_bg.jpg"></td>
  </tr>
</table>
 </body>
</html>
