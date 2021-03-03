package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.Draft;
import student.application.persistence.DraftDao;
import testUtils.Database;
import java.util.List;
import static org.junit.Assert.*;

public class DraftDaoTest {
    DraftDao dao;

    @BeforeEach
    void setUp() {

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        dao = new DraftDao();
    }

    @Test
    void getByIdSuccess() {
        Draft retrievedDraft = dao.getById(1);
        assertEquals(1, retrievedDraft.getId());
    }
}