package student.application.persistence;

// TODO THIS MAY BE DELETED AS IT MAY NOT BE USEFUL

import student.application.entity.Draft;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.xml.transform.Result;

public class DraftData {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public List<Draft> getAllDrafts() {
        String sql = "select * from drafts";
        return executeQuery(sql);
    }

    public List<Draft> executeQuery(String sql) {
        List<Draft> drafts = new ArrayList<>();
        Database database = Database.getInstance();
        Connection connection = null;
        try {
            database.connect();
            connection = database.getConnection();
            Statement selectStatement = connection.createStatement();
            ResultSet results = selectStatement.executeQuery(sql);
            while (results.next()) {
                Draft draft = createDraftFromResults(results);
                drafts.add(draft);
                logger.info("Here is this " + draft);
            }
            database.disconnect();
        } catch (SQLException sqle) {
            logger.error("SQLException occurred");
        } catch (Exception exc) {
            logger.error("Exception occurred");
        }
        return drafts;
    }

    private Draft createDraftFromResults(ResultSet results) throws SQLException {
        Draft draft = new Draft();
        draft.setUser(results.getString("user"));
        draft.setDraftName(results.getString("draftName"));
        draft.setDescription(results.getString("description"));
        draft.setPick1(results.getString("pick1"));
        draft.setTeam1(results.getString("team1"));
        draft.setPos1(results.getString("pos1"));
        draft.setUni1(results.getString("uni1"));
        draft.setPick2(results.getString("pick2"));
        draft.setTeam2(results.getString("team2"));
        draft.setPos2(results.getString("pos2"));
        draft.setUni2(results.getString("uni2"));
        draft.setPick3(results.getString("pick3"));
        draft.setTeam3(results.getString("team3"));
        draft.setPos3(results.getString("pos3"));
        draft.setUni3(results.getString("uni3"));
        draft.setPick4(results.getString("pick4"));
        draft.setTeam4(results.getString("team4"));
        draft.setPos4(results.getString("pos4"));
        draft.setUni4(results.getString("uni4"));
        draft.setPick5(results.getString("pick5"));
        draft.setTeam5(results.getString("team5"));
        draft.setPos5(results.getString("pos5"));
        draft.setUni5(results.getString("uni5"));
        draft.setPick6(results.getString("pick6"));
        draft.setTeam6(results.getString("team6"));
        draft.setPos6(results.getString("pos6"));
        draft.setUni6(results.getString("uni6"));
        draft.setPick7(results.getString("pick7"));
        draft.setTeam7(results.getString("team7"));
        draft.setPos7(results.getString("pos7"));
        draft.setUni7(results.getString("uni7"));
        draft.setPick8(results.getString("pick8"));
        draft.setTeam8(results.getString("team8"));
        draft.setPos8(results.getString("pos8"));
        draft.setUni8(results.getString("uni8"));

        draft.setPick9(results.getString("pick9"));
        draft.setTeam9(results.getString("team9"));
        draft.setPos9(results.getString("pos9"));
        draft.setUni9(results.getString("uni9"));
        draft.setPick10(results.getString("pick10"));
        draft.setTeam10(results.getString("team10"));
        draft.setPos10(results.getString("pos10"));
        draft.setUni10(results.getString("uni10"));
        draft.setPick11(results.getString("pick11"));
        draft.setTeam11(results.getString("team11"));
        draft.setPos11(results.getString("pos11"));
        draft.setUni11(results.getString("uni11"));
        draft.setPick12(results.getString("pick12"));
        draft.setTeam12(results.getString("team12"));
        draft.setPos12(results.getString("pos12"));
        draft.setUni12(results.getString("uni12"));
        draft.setPick13(results.getString("pick13"));
        draft.setTeam13(results.getString("team13"));
        draft.setPos13(results.getString("pos13"));
        draft.setUni13(results.getString("uni13"));
        draft.setPick14(results.getString("pick14"));
        draft.setTeam14(results.getString("team14"));
        draft.setPos14(results.getString("pos14"));
        draft.setUni14(results.getString("uni14"));
        draft.setPick15(results.getString("pick15"));
        draft.setTeam15(results.getString("team15"));
        draft.setPos15(results.getString("pos15"));
        draft.setUni15(results.getString("uni15"));
        draft.setPick16(results.getString("pick16"));
        draft.setTeam16(results.getString("team16"));
        draft.setPos16(results.getString("pos16"));
        draft.setUni16(results.getString("uni16"));

        draft.setPick17(results.getString("pick17"));
        draft.setTeam17(results.getString("team17"));
        draft.setPos17(results.getString("pos17"));
        draft.setUni17(results.getString("uni17"));
        draft.setPick18(results.getString("pick18"));
        draft.setTeam18(results.getString("team18"));
        draft.setPos18(results.getString("pos18"));
        draft.setUni18(results.getString("uni18"));
        draft.setPick19(results.getString("pick19"));
        draft.setTeam19(results.getString("team19"));
        draft.setPos19(results.getString("pos19"));
        draft.setUni19(results.getString("uni19"));
        draft.setPick20(results.getString("pick20"));
        draft.setTeam20(results.getString("team20"));
        draft.setPos20(results.getString("pos20"));
        draft.setUni20(results.getString("uni20"));
        draft.setPick21(results.getString("pick21"));
        draft.setTeam21(results.getString("team21"));
        draft.setPos21(results.getString("pos21"));
        draft.setUni21(results.getString("uni21"));
        draft.setPick22(results.getString("pick22"));
        draft.setTeam22(results.getString("team22"));
        draft.setPos22(results.getString("pos22"));
        draft.setUni22(results.getString("uni22"));
        draft.setPick23(results.getString("pick23"));
        draft.setTeam23(results.getString("team23"));
        draft.setPos23(results.getString("pos23"));
        draft.setUni23(results.getString("uni23"));
        draft.setPick24(results.getString("pick24"));
        draft.setTeam24(results.getString("team24"));
        draft.setPos24(results.getString("pos24"));
        draft.setUni24(results.getString("uni24"));

        draft.setPick25(results.getString("pick25"));
        draft.setTeam25(results.getString("team25"));
        draft.setPos25(results.getString("pos25"));
        draft.setUni25(results.getString("uni25"));
        draft.setPick26(results.getString("pick26"));
        draft.setTeam26(results.getString("team26"));
        draft.setPos26(results.getString("pos26"));
        draft.setUni26(results.getString("uni26"));
        draft.setPick27(results.getString("pick27"));
        draft.setTeam27(results.getString("team27"));
        draft.setPos27(results.getString("pos27"));
        draft.setUni27(results.getString("uni27"));
        draft.setPick28(results.getString("pick28"));
        draft.setTeam28(results.getString("team28"));
        draft.setPos28(results.getString("pos28"));
        draft.setUni28(results.getString("uni28"));
        draft.setPick29(results.getString("pick29"));
        draft.setTeam29(results.getString("team29"));
        draft.setPos29(results.getString("pos29"));
        draft.setUni29(results.getString("uni29"));
        draft.setPick30(results.getString("pick30"));
        draft.setTeam30(results.getString("team30"));
        draft.setPos30(results.getString("pos30"));
        draft.setUni30(results.getString("uni30"));
        draft.setPick31(results.getString("pick31"));
        draft.setTeam31(results.getString("team31"));
        draft.setPos31(results.getString("pos31"));
        draft.setUni31(results.getString("uni31"));
        draft.setPick32(results.getString("pick32"));
        draft.setTeam32(results.getString("team32"));
        draft.setPos32(results.getString("pos32"));
        draft.setUni32(results.getString("uni32"));

        return draft;
    }
}
