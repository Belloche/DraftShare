package student.application.controller;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import student.application.entity.Draft;
import student.application.persistence.DraftDao;
import student.application.persistence.DraftData;

import javax.json.JsonObject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import student.application.persistence.ProjectDao;

@WebServlet(
        urlPatterns = {"/home"}
)

public class homepage extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//        ServletContext context = getServletContext();
//        HttpSession session = req.getSession();

//        DraftData draftData = new DraftData();
        ProjectDao dao = new ProjectDao(Draft.class);

        req.setAttribute("drafts", dao.getAll());

//        JSONParser parser = new JSONParser();
//        List<Object> names = new ArrayList<Object>();
//        String inline = "";
//        Object object = null;
//        JSONArray jsonArray = new JSONArray();
//        try {
//            URL url = new URL("http://universities.hipolabs.com/search?country=United%20States");
//            HttpURLConnection connection = (HttpURLConnection)url.openConnection();
//            connection.connect();
////            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
//            Scanner scanner = new Scanner(url.openStream());
//            inline = scanner.nextLine();
//            object = parser.parse(inline);
//            jsonArray.put(object);
////            while (scanner.hasNext()) {
////                inline = scanner.nextLine();
////                object = parser.parse(inline);
////                jsonArray.put(object);
////            }
//            logger.info("First entry: " + jsonArray.get(0));
//            for (int i = 0; i < jsonArray.length(); i++) {
//                JSONObject thisObject = (JSONObject) jsonArray.getJSONObject(i);
//                logger.info("Thing: " + thisObject.getString("name"));
//            }
////            logger.info("Data in string format:");
////            logger.info(inline);
//        } catch (ParseException pe) {
//            logger.error("Parse Exception found");
//            logger.error(pe);
//        } catch (Exception exc) {
//            logger.error("Exception found");
//            logger.error(exc);
//        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, res);
    }
}