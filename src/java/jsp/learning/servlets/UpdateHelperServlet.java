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
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    //Do nothing
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        UserData user= (UserData) req.getSession().getAttribute(req.getParameterNames().nextElement().toString());
        UserManager userManager = UserManager.getUsersInstance();
        req.setAttribute("user", userManager.getUsers().get(userManager.getUsers().indexOf(user)));
        RequestDispatcher rd=req.getRequestDispatcher("userProfile.jsp");
        rd.forward(req, resp);
    }
}
