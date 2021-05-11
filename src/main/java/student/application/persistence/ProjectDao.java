package student.application.persistence;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

/**
 * The GenericDAO for the project
 * @author Zane Miller
 * @version 1.0 5-10-2021
 *
 * @param <T> the type parameter
 */
public class ProjectDao<T> {
    private Class<T> type;
    private  final Logger logger = LogManager.getLogger(this.getClass());

    /**
     * Instantiates a new ProjectDAO
     *
     * @param type the type being used
     */
    public ProjectDao(Class<T> type) {
        this.type = type;
    }

    private Session getSession() {
        return SessionFactoryProvider.getSessionFactory().openSession();
    }

    /**
     * Queries the database with an id
     *
     * @param <T> the type parameter
     * @param id  the id
     * @return the Object specified by type
     */
    public<T>T getById(int id) {
        Session session = getSession();
        T entity = (T)session.get(type, id);
        session.close();
        return entity;
    }

    /**
     * Queries the database with a save or update query
     *
     * @param object the object specified by the type
     */
    public void saveOrUpdate(T object) {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(object);
        transaction.commit();
        session.close();
    }

    /**
     * Queries the database with an insert query to add a record to the database
     *
     * @param entity the entity being inserted
     * @return the id of the new record
     */
    public int insert(T entity) {
        int id = 0;
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        id = (int)session.save(entity);
        transaction.commit();
        session.close();
        return id;
    }

    /**
     * Queries the database with a delete query
     *
     * @param entity the entity being deleted from the database
     */
    public void delete(T entity) {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.delete(entity);
        transaction.commit();
        session.close();
    }

    /**
     * Queries the database with a specified property
     *
     * @param propertyName the property name to be searched
     * @param value        the value being searched in the database
     * @return the list of matching records
     */
    public List<T> findByPropertyEqual(String propertyName, Object value) {
        Session session = getSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<T> query = builder.createQuery(type);
        Root<T> root = query.from(type);
        query.select(root).where(builder.equal(root.get(propertyName),value));

        return session.createQuery(query).getResultList();
    }

    /**
     * Gets all of a specified object from the database
     *
     * @return List of matching records
     */
    public List<T> getAll() {
        Session session = getSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<T> query = builder.createQuery(type);
        Root<T> root = query.from(type);
        List<T> list = session.createQuery(query).getResultList();
        session.close();
        return list;
    }
}
