import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String uname=request.getParameter("user.name");
			String password=request.getParameter("user.password");
			RegisterDao rdao=new RegisterDao();
			String login="";
			try {
				login = rdao.login(uname,password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(login.equals("True")) {
				response.sendRedirect("project/index.jsp?username="+uname);
			}else {
				response.getWriter().println(login);
			}
			
			
		}

}
