import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Form")
public class Form extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html");

        String school_id = "#123432";
        String username = "test";
        String name = request.getParameter("school_name");
        String type = request.getParameter("school_type");
        String management = request.getParameter("management_type");
        String district = request.getParameter("district");
        String taluka = request.getParameter("taluka");
        String address = request.getParameter("address");
        int building = Integer.parseInt(request.getParameter("noOfbuilding"));
        RegisterDao rdao=new RegisterDao();
		String form="";
		try {
			form = rdao.form(school_id,username,name,type,management,district,taluka,address,building);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(form.equals("True")) {
			response.sendRedirect("project/index.html?id="+username);
		}else {
			response.getWriter().println(form);
		}

        
    }
}
