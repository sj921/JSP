package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {
	/*
		/chap01/gugudan 으로 접속하는 사용자들에게
		멋있는 구구단 페이지를 응답하는 서블릿을 만들어보세요 
	*/
		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// <% %>
		
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
							
		out.print("<html lang=\"kr\">");
		out.print("<head>");
		out.print("<title>Gugudan</title>");
		out.print("</head>");
		out.print("<style>" 
			+ "* {" 
			+ "box-sizing: border-box;"        
			+ "}"   
			+ "#grid-container { "
            + "display: grid;"
            + "grid-template-columns: 0.5fr repeat(9, 1fr);"
		 	+ "grid-template-rows: repeat(9, 30px);"
            + "row-gap: 2px;"
		 	+ "column-gap: 2px;"
		 	+ "}"
		 	+ "#grid-container > div { "
		 	+ "text-align: center;"
		 	+ "border: solid pink 1px;"
		  	+ "}"
	        + "#grid-container > .gop { " 
	        + "text-align: center;"
        	+ "background-color: pink;"  
	        + "}" 
	        + "#grid-container > .dan { " 
	        + "text-align: center;"
        	+ "background-color: pink;"           
        	+ "}" 		  
		 	+ "</style>");
		out.print("<body>");
	
		out.print("<div id=\"grid-container\">");
		int dan = 2;
		int gop = 0;	
		
		while (gop <= 9) {
            if (gop == 0) {
            	out.print("<div></div>");
            } else {
            	out.print("<div class=\"gop\">" + " X " + gop + "</div>");
            }
            ++gop;
        }
		
	     while (dan <= 9) {
	            gop = 1;
	            out.print("<div class=\"dan\">" + dan + " X " + "</div>");
	            while (gop <= 9) {
	            	out.print("<div>" + dan + " X " + gop + " = " + dan*gop +"</div>");
	                ++gop;
	            }
	            ++dan;
	        }

		out.print("</div>");

		out.print("</body>");
		out.print("</html>");	
		
	}

}