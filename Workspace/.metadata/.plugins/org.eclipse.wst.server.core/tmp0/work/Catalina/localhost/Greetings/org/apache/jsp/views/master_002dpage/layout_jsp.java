/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2016-11-17 18:51:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.master_002dpage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class layout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fspring_005fmessage_0026_005fcode_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fspring_005fmessage_0026_005fcode_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest.release();
    _005fjspx_005ftagPool_005fspring_005fmessage_0026_005fcode_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<base href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.scheme}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(':');
      out.write('/');
      out.write('/');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.serverName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(':');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.serverPort}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/\" />\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"favicon.ico\"/> \r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jquery-ui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"scripts/jmenu.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"styles/common.css\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"styles/jmenu.css\" media=\"screen\"\r\n");
      out.write("\ttype=\"text/css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"styles/displaytag.css\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<title>");
      if (_jspx_meth_tiles_005finsertAttribute_005f0(_jspx_page_context))
        return;
      out.write("</title>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\t$(\"#jMenu\").jMenu();\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\tfunction relativeRedir(loc) {\t\r\n");
      out.write("\t\tvar b = document.getElementsByTagName('base');\r\n");
      out.write("\t\tif (b && b[0] && b[0].href) {\r\n");
      out.write("\t  \t\tif (b[0].href.substr(b[0].href.length - 1) == '/' && loc.charAt(0) == '/')\r\n");
      out.write("\t    \tloc = loc.substr(1);\r\n");
      out.write("\t  \t\tloc = b[0].href + loc;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\twindow.location.replace(loc);\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t");
      if (_jspx_meth_tiles_005finsertAttribute_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<h1>\r\n");
      out.write("\t\t\t");
      if (_jspx_meth_tiles_005finsertAttribute_005f2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t</h1>\r\n");
      out.write("\t\t");
      if (_jspx_meth_tiles_005finsertAttribute_005f3(_jspx_page_context))
        return;
      out.write("\t\r\n");
      out.write("\t\t");
      if (_jspx_meth_jstl_005fif_005f0(_jspx_page_context))
        return;
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t");
      if (_jspx_meth_tiles_005finsertAttribute_005f4(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_tiles_005finsertAttribute_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_005finsertAttribute_005f0 = (new org.apache.tiles.jsp.taglib.InsertAttributeTag());
    _jsp_instancemanager.newInstance(_jspx_th_tiles_005finsertAttribute_005f0);
    _jspx_th_tiles_005finsertAttribute_005f0.setJspContext(_jspx_page_context);
    // /views/master-page/layout.jsp(42,7) name = name type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_tiles_005finsertAttribute_005f0.setName("title");
    _jspx_th_tiles_005finsertAttribute_005f0.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_tiles_005finsertAttribute_005f0);
    return false;
  }

  private boolean _jspx_meth_tiles_005finsertAttribute_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_005finsertAttribute_005f1 = (new org.apache.tiles.jsp.taglib.InsertAttributeTag());
    _jsp_instancemanager.newInstance(_jspx_th_tiles_005finsertAttribute_005f1);
    _jspx_th_tiles_005finsertAttribute_005f1.setJspContext(_jspx_page_context);
    // /views/master-page/layout.jsp(65,2) name = name type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_tiles_005finsertAttribute_005f1.setName("header");
    _jspx_th_tiles_005finsertAttribute_005f1.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_tiles_005finsertAttribute_005f1);
    return false;
  }

  private boolean _jspx_meth_tiles_005finsertAttribute_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_005finsertAttribute_005f2 = (new org.apache.tiles.jsp.taglib.InsertAttributeTag());
    _jsp_instancemanager.newInstance(_jspx_th_tiles_005finsertAttribute_005f2);
    _jspx_th_tiles_005finsertAttribute_005f2.setJspContext(_jspx_page_context);
    // /views/master-page/layout.jsp(69,3) name = name type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_tiles_005finsertAttribute_005f2.setName("title");
    _jspx_th_tiles_005finsertAttribute_005f2.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_tiles_005finsertAttribute_005f2);
    return false;
  }

  private boolean _jspx_meth_tiles_005finsertAttribute_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_005finsertAttribute_005f3 = (new org.apache.tiles.jsp.taglib.InsertAttributeTag());
    _jsp_instancemanager.newInstance(_jspx_th_tiles_005finsertAttribute_005f3);
    _jspx_th_tiles_005finsertAttribute_005f3.setJspContext(_jspx_page_context);
    // /views/master-page/layout.jsp(71,2) name = name type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_tiles_005finsertAttribute_005f3.setName("body");
    _jspx_th_tiles_005finsertAttribute_005f3.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_tiles_005finsertAttribute_005f3);
    return false;
  }

  private boolean _jspx_meth_jstl_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  jstl:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_jstl_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_jstl_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_jstl_005fif_005f0.setParent(null);
    // /views/master-page/layout.jsp(72,2) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_jstl_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message != null}", java.lang.Boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false)).booleanValue());
    int _jspx_eval_jstl_005fif_005f0 = _jspx_th_jstl_005fif_005f0.doStartTag();
    if (_jspx_eval_jstl_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t<br />\r\n");
        out.write("\t\t\t<span class=\"error\">");
        if (_jspx_meth_spring_005fmessage_005f0(_jspx_th_jstl_005fif_005f0, _jspx_page_context))
          return true;
        out.write("</span>\r\n");
        out.write("\t\t");
        int evalDoAfterBody = _jspx_th_jstl_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_jstl_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest.reuse(_jspx_th_jstl_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fjstl_005fif_0026_005ftest.reuse(_jspx_th_jstl_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_spring_005fmessage_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_jstl_005fif_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  spring:message
    org.springframework.web.servlet.tags.MessageTag _jspx_th_spring_005fmessage_005f0 = (org.springframework.web.servlet.tags.MessageTag) _005fjspx_005ftagPool_005fspring_005fmessage_0026_005fcode_005fnobody.get(org.springframework.web.servlet.tags.MessageTag.class);
    _jspx_th_spring_005fmessage_005f0.setPageContext(_jspx_page_context);
    _jspx_th_spring_005fmessage_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_jstl_005fif_005f0);
    // /views/master-page/layout.jsp(74,23) name = code type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_spring_005fmessage_005f0.setCode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${message}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
    int[] _jspx_push_body_count_spring_005fmessage_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_spring_005fmessage_005f0 = _jspx_th_spring_005fmessage_005f0.doStartTag();
      if (_jspx_th_spring_005fmessage_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_spring_005fmessage_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_spring_005fmessage_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_spring_005fmessage_005f0.doFinally();
      _005fjspx_005ftagPool_005fspring_005fmessage_0026_005fcode_005fnobody.reuse(_jspx_th_spring_005fmessage_005f0);
    }
    return false;
  }

  private boolean _jspx_meth_tiles_005finsertAttribute_005f4(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_005finsertAttribute_005f4 = (new org.apache.tiles.jsp.taglib.InsertAttributeTag());
    _jsp_instancemanager.newInstance(_jspx_th_tiles_005finsertAttribute_005f4);
    _jspx_th_tiles_005finsertAttribute_005f4.setJspContext(_jspx_page_context);
    // /views/master-page/layout.jsp(78,2) name = name type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_tiles_005finsertAttribute_005f4.setName("footer");
    _jspx_th_tiles_005finsertAttribute_005f4.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_tiles_005finsertAttribute_005f4);
    return false;
  }
}
