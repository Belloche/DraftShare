package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class DraftDaoTest {


    @BeforeEach
    void setUp() {

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");

        dao = new BookDao();
    }
}