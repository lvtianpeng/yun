<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>  
<SCRIPT language=javascript>
//������ĺϷ���
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�����������û�����");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.email.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\����������ע�����䣡");
		document.loginform.email.focus();
		return false;
	} 
}
</SCRIPT>

  <FORM name="loginform" method="post" action="<%=basePath %>MemberServlet?method=lost" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <TR>
	  <TD width="20%" align="right">�û��ʺţ�</TD>
	  <TD align="left"><input type="text" size="30"name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">ע�����䣺</TD>
	  <TD align="left"><input type="text" size="30"name="email"></TD>
	</TR> 
    <TR>
      <TD align="center" colspan="2"><INPUT value="�ύ" type=submit> </TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
