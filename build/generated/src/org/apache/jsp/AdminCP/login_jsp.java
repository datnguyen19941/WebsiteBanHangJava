package org.apache.jsp.AdminCP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Login</title>\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write(" \n");
      out.write("       <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/loginadminstyle.css\" rel='stylesheet' type='text/css' /> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"login\">\n");
      out.write("\t\t<div class=\"login-screen\">\n");
      out.write("\t\t\t<div class=\"app-title\">\n");
      out.write("\t\t\t\t<h1>ADMIN CONTROL PANEL</h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("                       \n");
      out.write("\t\t\t<div class=\"login-form\">\n");
      out.write("                            <div >\n");
      out.write("                            <form action=\"/Quan_Ly_Ban_Hang/UsersServlet\" method=\"POST\">\n");
      out.write("                                ");
if(session.getAttribute("error")!=null){
      out.write("\n");
      out.write("                                 <div>  \n");
      out.write("                                        <p  style=\"color:red\">");
      out.print(session.getAttribute("error"));
      out.write("</p>  \n");
      out.write("                                 </div>   \n");
      out.write("                                 ");
}
      out.write(" \n");
      out.write("\t\t\t\t<div class=\"control-group\"> \t<input type=\"text\" class=\"login-field\" value=\"\" placeholder=\"username\" id=\"login-name\" name=\"email\">\n");
      out.write("\t\t\t\t\t<label class=\"login-field-icon fui-user\" for=\"login-name\"></label>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"control-group\"> \n");
      out.write("                                    <input type=\"password\" name=\"password\" class=\"login-field\" value=\"\" placeholder=\"password\" id=\"login-pass\">\n");
      out.write("\t\t\t\t\t<label class=\"login-field-icon fui-lock\" for=\"login-pass\"></label>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\t\t\t\n");
      out.write("                                \n");
      out.write("                                <input type=\"hidden\" value=\"loginAD\" name=\"command\">\n");
      out.write("\t\t\t\t<input class=\"btn btn-primary btn-large btn-block\" type=\"submit\" value=\"Đăng nhập\"> \n");
      out.write("\t\t\t\t</form> \n");
      out.write("\t\t\t</div>\n");
      out.write("                      \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("root");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }
}
