package com.action;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ComBean;
import com.util.Constant;

public class ComServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ComServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType(Constant.CONTENTTYPE);
		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		HttpSession session = request.getSession();
		ComBean cBean = new ComBean();
		String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		String date2=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		String method = request.getParameter("method");
		if(method.equals("addfl")){//文件分类管理  ----注释 
			String mc=request.getParameter("mc");
			String sm=request.getParameter("sm"); 
			String str=cBean.getString("select id from fl where mc='"+mc+"'");
			if(str==null){
				int flag=cBean.comUp("insert into fl(mc,sm) values('"+mc+"','"+sm+"' )");
				if(flag==Constant.SUCCESS){
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
				}
				else{
					request.setAttribute("message", "系统维护中！");
					request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
				}
			}
			else{
				request.setAttribute("message", "信息重复！");
				request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
			} 
		}
		else if(method.equals("upfl")){ //修改文件分类
			String id=request.getParameter("id"); 
			String mc=request.getParameter("mc");
			String sm=request.getParameter("sm"); 
			String str=cBean.getString("select sm from fl where mc='"+mc+"' and id!='"+id+"'");
			if(str==null){
				int flag=cBean.comUp("update fl set mc='"+mc+"',sm='"+sm+"' where id='"+id+"'");
				if(flag==Constant.SUCCESS){
					request.setAttribute("message", "操作成功！");
					request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
				}
				else{
					request.setAttribute("message", "系统维护中！");
					request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
				} 
			}
			else{
				request.setAttribute("message", "信息重复！");
				request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
			}  
		}
		else if(method.equals("delfl")){//删除文件分类
			String id=request.getParameter("id");
			int flag=cBean.comUp("delete from fl where id='"+id+"'");
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中！");
				request.getRequestDispatcher("admin/fl/index.jsp").forward(request, response);
			}
		}
		 
		
		else if(method.equals("delwd")){  //删除上传文件
			String id=request.getParameter("id");    
			int flag=cBean.comUp("delete from wd where id='"+id+"'");
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中！");
				request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
			}  
		}
		 
		else if(method.equals("delwd2")){  //删除上传文件
			String id=request.getParameter("id");    
			int flag=cBean.comUp("delete from wd where id='"+id+"'");
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中！");
				request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
			}  
		}
		
		else if(method.equals("pj")){//文件分类管理  ----注释 
			String wdid=request.getParameter("wdid");
			String word=request.getParameter("word"); 
			String member=(String)session.getAttribute("member"); 
			int flag=cBean.comUp("insert into pj(wdid,nr,member,sj) values('"+wdid+"','"+word+"','"+member+"','"+date2+"' )");
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("member/gx/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中！");
				request.getRequestDispatcher("member/gx/index.jsp").forward(request, response);
			} 
		}
		else if(method.equals("delpj")){  //删除上传文件
			String id=request.getParameter("id");    
			int flag=cBean.comUp("delete from pj where id='"+id+"'");
			if(flag==Constant.SUCCESS){
				request.setAttribute("message", "操作成功！");
				request.getRequestDispatcher("admin/pj/index.jsp").forward(request, response);
			}
			else{
				request.setAttribute("message", "系统维护中！");
				request.getRequestDispatcher("admin/pj/index.jsp").forward(request, response);
			}  
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
