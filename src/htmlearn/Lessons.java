package htmlearn;

import java.io.*;
import java.util.HashMap;
import javax.servlet.http.*;
import javax.servlet.ServletException;

import org.jsoup.Jsoup;
import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserServiceFactory;

public class Lessons extends HttpServlet {
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp)
         throws IOException, ServletException {
      User user = UserServiceFactory.getUserService().getCurrentUser();
      HashMap<String, String> lessons = new HashMap<String, String>();
      for (File lessonfile : new File(getServletContext()
            .getRealPath("/lessons/")).listFiles()) {
         lessons.put(lessonfile.getName(),
            Jsoup.parse(lessonfile, "utf-8").body()
               .getElementsByTag("t:lesson").attr("name"));
  	   }
  	   req.setAttribute("lessons", lessons);
  	   req.getRequestDispatcher("/WEB-INF/lessons.jsp").forward(req, resp);
   }
}