package Persistence;

import org.junit.jupiter.api.BeforeEach;
import student.application.persistence.DraftDao;
import testUtils.Database;

public class DraftDaoTest {
    DraftDao dao;

    @BeforeEach
    void setUp() {

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        dao = new DraftDao();
    }
}