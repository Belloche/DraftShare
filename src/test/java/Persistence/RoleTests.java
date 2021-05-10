package Persistence;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import student.application.entity.Role;
import student.application.persistence.Database;
import student.application.persistence.ProjectDao;

import java.util.List;

import static org.junit.Assert.*;

public class RoleTests {
    ProjectDao roleDao;

    @BeforeEach
    void setUp() {
        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
        roleDao = new ProjectDao(Role.class);
    }

    /**
     * Role Tests
     */
    @Test
    void getRoleByIdSuccess() {
        Role retrievedRole = (Role) roleDao.getById(1);
        assertEquals(1, retrievedRole.getId());
        assertEquals("user", retrievedRole.getRoleName());
        assertEquals(1, retrievedRole.getUserId());
        assertEquals("pwaite", retrievedRole.getUserName());
    }

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

    @Test
    void updateRoleSuccess() {
        String newRoleName = "newRoleName";
        Role roleToUpdate = (Role) roleDao.getById(2);
        roleToUpdate.setRoleName(newRoleName);
        roleDao.saveOrUpdate(roleToUpdate);
        Role roleAfterUpdate = (Role) roleDao.getById(2);
        assertEquals(newRoleName, roleAfterUpdate.getRoleName());
    }

    @Test
    void deleteRoleSuccess() {
        roleDao.delete(roleDao.getById(3));
        assertNull(roleDao.getById(3));
    }

    @Test
    void getAllRolesSuccess() {
        List<Role> roles = roleDao.getAll();
        assertEquals(3, roles.size());
    }
}
