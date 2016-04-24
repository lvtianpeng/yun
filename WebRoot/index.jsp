<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>  
<SCRIPT language=javascript>
//检验表单的合法性
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的登录帐号！");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的密码！");
		document.loginform.password.focus();
		return false;
	} 
}
</SCRIPT>
  <FORM name="loginform" method="post" action="<%=basePath %>AdminServlet?method=one" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <TR>
	  <TD width="20%" align="right">登录帐号：</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">登录密码：</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR> 
	<TR>
	  <TD width="20%" align="right">用户身份：</TD>
	  <TD align="left"><select name="sf"> 
    <option value="普通用户">普通用户</option> 
    <option value="管理用户">管理用户</option>
    </select></TD>
	</TR> 
    <TR>
      <TD align="center" colspan="2"><INPUT value="点击登录" type=submit> 
      <a href="reg.jsp">用户注册</a> 
      <a href="lost.jsp">找回密码</a> 
       </TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
