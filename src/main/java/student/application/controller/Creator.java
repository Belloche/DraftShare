package student.application.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        urlPatterns = "/creator"
)
public class Creator extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpURLConnection connection;
        BufferedReader reader;
        String line;
        StringBuffer stringBuffer = new StringBuffer();
        List<String> universities = new ArrayList<String>();
        try {
            URL url = new URL("http://universities.hipolabs.com/search?country=United%20States");
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            while ((line = reader.readLine()) != null) {
                stringBuffer.append(line);
            }
            reader.close();
            connection.disconnect();

            JSONArray schools = new JSONArray(stringBuffer.toString());
            for (int i = 0; i < schools.length(); i++) {
                JSONObject school = schools.getJSONObject(i);
                String name = school.getString("name");
                universities.add(name);
            }
        } catch (Exception exc) {
            logger.error("Exception caught");
            logger.error(exc);
        }

        req.setAttribute("universities", universities);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/createDraft.jsp");
        dispatcher.forward(req, res);
    }
}
