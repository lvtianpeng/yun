<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>  
<SCRIPT language=javascript>
//������ĺϷ���
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\���������ĵ�¼�ʺţ�");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\�������������룡");
		document.loginform.password.focus();
		return false;
	} 
}
</SCRIPT>
  <FORM name="loginform" method="post" action="<%=basePath %>AdminServlet?method=one" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <TR>
	  <TD width="20%" align="right">��¼�ʺţ�</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">��¼���룺</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR> 
	<TR>
	  <TD width="20%" align="right">�û���ݣ�</TD>
	  <TD align="left"><select name="sf"> 
    <option value="��ͨ�û�">��ͨ�û�</option> 
    <option value="�����û�">�����û�</option>
    </select></TD>
	</TR> 
    <TR>
      <TD align="center" colspan="2"><INPUT value="�����¼" type=submit> 
      <a href="reg.jsp">�û�ע��</a> 
      <a href="lost.jsp">�һ�����</a> 
       </TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
