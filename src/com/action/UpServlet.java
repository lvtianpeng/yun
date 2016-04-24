package com.action;

/**
 *  上传 
 * 
 */
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
import com.util.Constant; 
import com.util.SmartFile;
import com.util.SmartUpload;
import com.bean.ComBean;
public class UpServlet extends HttpServlet {

	private ServletConfig config;
	/**
	 * Constructor of the object.
	 */
	public UpServlet() {
		super();
	}

	final public void init(ServletConfig config) throws ServletException
    {
        this.config = config;  
    }

    final public ServletConfig getServletConfig()
    {
        return config;
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

		request.setCharacterEncoding(Constant.CHARACTERENCODING);
		response.setContentType(Constant.CONTENTTYPE); 
		HttpSession session = request.getSession();
		String date=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime());
		 
				 String method = null;
				 ComBean cBean = new ComBean();
				 String date2=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
				 SmartUpload mySmartUpload = new SmartUpload();//init
				 int count = 0;
				 try{
					 mySmartUpload.initialize(config,request,response);
		             mySmartUpload.upload(); 
		             method = mySmartUpload.getRequest().getParameter("method").trim();
		            if(method.equals("addwd")){ 
		            	String mc =  mySmartUpload.getRequest().getParameter("mc") ; 
						String fl = mySmartUpload.getRequest().getParameter("fl");  
						String bz = mySmartUpload.getRequest().getParameter("bz");  
						String gx = mySmartUpload.getRequest().getParameter("gx");  
						String username=(String)session.getAttribute("user"); 
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="upload";
		                    count = mySmartUpload.save(path); 
		                    	int flag = cBean.comUp("insert into wd(mc,fl,url,bz,sj,yh,gx) " +
		                    			"values('"+mc+"','"+fl+"','"+path+"/"+file.getFileName()+"','"+bz+"' ,'"+date2+"','"+username+"','"+gx+"')");
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "操作成功！");
									request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
								} 			
		            }
		            else if(method.equals("upwd")){//修改 
		            	String id =  mySmartUpload.getRequest().getParameter("id") ; 
		            	String mc =  mySmartUpload.getRequest().getParameter("mc") ; 
						String fl = mySmartUpload.getRequest().getParameter("fl");  
						String bz = mySmartUpload.getRequest().getParameter("bz");   
						String gx = mySmartUpload.getRequest().getParameter("gx");  
						SmartFile file = mySmartUpload.getFiles().getFile(0);
		            	String fileExt=file.getFileExt();	            
		            	String path="upload";
	                    count = mySmartUpload.save(path);
	                     
	                    int flag=cBean.comUp("update wd set mc='"+mc+"',fl='"+mc+"',url='"+path+"/"+file.getFileName()+"',bz='"+bz+"',gx='"+gx+"' where id='"+id+"'");
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "操作成功！");
								request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher("admin/wd/index.jsp").forward(request, response);
							} 
		            }
		            else if(method.equals("addwd2")){ 
		            	String mc =  mySmartUpload.getRequest().getParameter("mc") ; 
						String fl = mySmartUpload.getRequest().getParameter("fl");  
						String bz = mySmartUpload.getRequest().getParameter("bz");  
						String gx = mySmartUpload.getRequest().getParameter("gx");  
						String member=(String)session.getAttribute("member"); 
							SmartFile file = mySmartUpload.getFiles().getFile(0);
			            	String fileExt=file.getFileExt();	            
			            	String path="upload";
		                    count = mySmartUpload.save(path); 
		                    	int flag = cBean.comUp("insert into wd(mc,fl,url,bz,sj,yh,gx) " +
		                    			"values('"+mc+"','"+fl+"','"+path+"/"+file.getFileName()+"','"+bz+"' ,'"+date2+"','"+member+"','"+gx+"')");
								if(flag == Constant.SUCCESS){
									request.setAttribute("message", "操作成功！");
									request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
								}
								else{
									request.setAttribute("message", "系统维护中，请稍后再试！");
									request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
								} 			
		            }
		            else if(method.equals("upwd2")){//修改 
		            	String id =  mySmartUpload.getRequest().getParameter("id") ; 
		            	String mc =  mySmartUpload.getRequest().getParameter("mc") ; 
						String fl = mySmartUpload.getRequest().getParameter("fl");  
						String bz = mySmartUpload.getRequest().getParameter("bz");  
						String gx = mySmartUpload.getRequest().getParameter("gx");  
						SmartFile file = mySmartUpload.getFiles().getFile(0);
		            	String fileExt=file.getFileExt();	            
		            	String path="upload";
	                    count = mySmartUpload.save(path);
	                    if(count==0){
	                    	int flag=cBean.comUp("update wd set mc='"+mc+"',fl='"+mc+"',bz='"+bz+"',gx='"+gx+"' where id='"+id+"'");
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "操作成功！");
								request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
							} 
	                    }
	                    else{
	                    	int flag=cBean.comUp("update wd set mc='"+mc+"',fl='"+mc+"',url='"+path+"/"+file.getFileName()+"',bz='"+bz+"',gx='"+gx+"' where id='"+id+"'");
							if(flag == Constant.SUCCESS){
								request.setAttribute("message", "操作成功！");
								request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
							}
							else{
								request.setAttribute("message", "系统维护中，请稍后再试！");
								request.getRequestDispatcher("member/wd/index.jsp").forward(request, response);
							} 
	                    } 
		            } 
		            else{
		            	request.getRequestDispatcher("error.jsp").forward(request, response);
		            }
		        }catch(Exception ex){
		        	ex.printStackTrace();
		        	//request.getRequestDispatcher("error.jsp").forward(request, response);
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
