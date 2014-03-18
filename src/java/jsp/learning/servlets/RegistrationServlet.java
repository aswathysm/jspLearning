package jsp.learning.servlets;

import jsp.learning.data.UserData;
import jsp.learning.data.UserManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;

/**
 * Created by A-6077 on 3/13/14.
 */
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        UserData user= (UserData)req.getSession().getAttribute("user");
        UserManager userManager = UserManager.getUsersInstance();

        /*if(req.getParameter("Save") != null){
            if(userManager.registerUser(user)){
                RequestDispatcher rd=req.getRequestDispatcher("redirect.jsp");
                rd.forward(req, resp);
            }
            else{
                RequestDispatcher rd=req.getRequestDispatcher("errorPage.jsp");
                rd.forward(req, resp);
            }
        }
        else*/
            if(userManager.update(user)) resp.sendRedirect("redirect.jsp");
            else resp.sendRedirect("errorPage.jsp");
    }
}
