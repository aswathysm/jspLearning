package jsp.learning.servlets;

import jsp.learning.data.UserData;
import jsp.learning.data.UserManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by A-6077 on 3/13/14.
 */
public class UpdateHelperServlet extends HttpServlet {

    private UserData user ;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        user= (UserData) req.getSession().getAttribute(req.getParameterNames().nextElement().toString());
        UserManager userManager = UserManager.getUsersInstance();
        req.setAttribute("user", userManager.getUsers().get(userManager.getUsers().indexOf(user)));
        req.getSession().setAttribute("user",userManager.getUsers().get(userManager.getUsers().indexOf(user)));
        resp.sendRedirect("userProfile.jsp");
       /* RequestDispatcher rd=req.getRequestDispatcher("userProfile.jsp");
        rd.include(req, resp);*/
    }
}
