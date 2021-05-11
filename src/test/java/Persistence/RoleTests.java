package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.Role;
import student.application.persistence.Database;
import student.application.persistence.ProjectDao;

import java.util.List;

import static org.junit.Assert.*;

/**
 * The Unit Tests for the Role Entity
 */
public class RoleTests {
    /**
     * The Role dao using the ProjectDAO (GenericDAO)
     */
    ProjectDao roleDao;

    /**
     * Sets up the database before each test
     */
    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
        roleDao = new ProjectDao(Role.class);
    }

    /**
     * Tests that a role was successfully retrieved from the database by id
     */
    @Test
    void getRoleByIdSuccess() {
        Role retrievedRole = (Role) roleDao.getById(1);
        assertEquals(1, retrievedRole.getId());
        assertEquals("user", retrievedRole.getRoleName());
        assertEquals(1, retrievedRole.getUserId());
        assertEquals("pwaite", retrievedRole.getUserName());
    }

    /**
     * Tests for a successful insertion of a role into the database
     */
    @Test
    void insertRoleSuccess() {
        Role newRole = new Role();
        newRole.setRoleName("newRole");
        newRole.setUserName("roleTestUser");
        newRole.setUserId(1);
        int id = roleDao.insert(newRole);
        assertNotEquals(0, id);
        Role insertedRole = (Role) roleDao.getById(id);
        assertEquals("roleTestUser", insertedRole.getUserName());
        assertEquals("newRole", insertedRole.getRoleName());
        assertEquals(id, insertedRole.getId());
        assertEquals(1, insertedRole.getUserId());
    }

    /**
     * Tests that the specified role was updated successfully
     */
    @Test
    void updateRoleSuccess() {
        String newRoleName = "newRoleName";
        Role roleToUpdate = (Role) roleDao.getById(2);
        roleToUpdate.setRoleName(newRoleName);
        roleDao.saveOrUpdate(roleToUpdate);
        Role roleAfterUpdate = (Role) roleDao.getById(2);
        assertEquals(newRoleName, roleAfterUpdate.getRoleName());
    }

    /**
     * Tests that the specified role was deleted successfully
     */
    @Test
    void deleteRoleSuccess() {
        roleDao.delete(roleDao.getById(3));
        assertNull(roleDao.getById(3));
    }

    /**
     * Tests for the right number of roles retrieved from the database was correct
     */
    @Test
    void getAllRolesSuccess() {
        List<Role> roles = roleDao.getAll();
        assertEquals(3, roles.size());
    }
}
