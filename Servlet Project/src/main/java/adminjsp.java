

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminjsp")
public class adminjsp extends HttpServlet {
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("n1");
		String password=request.getParameter("n2");
		
		if(username.equals("admin") && password.equals("1715"))
		{
			response.sendRedirect("adminhome.jsp");
		}
		else
		{
			response.sendRedirect("admin.jsp");
		}

		
	}

}
