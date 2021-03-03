package Persistence;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import student.application.entity.Draft;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transaction;
import java.util.List;

/**
 * The type Draft dao.
 */
public class DraftDao {
    private final Logger logger = LogManager.getLogger(this.getClass());
    /**
     * The Session factory.
     */
    SessionFactory sessionFactory = SessionFactoryProvider.getSessionFactory();

    /**
     * Gets by id.
     *
     * @param id the id
     * @return the by id
     */
    public Draft getById(int id) {
        Session session = sessionFactory.openSession();
        Draft Draft = session.get(Draft.class, id);
        session.close();
        return Draft;
    }

    /**
     * Save or update.
     *
     * @param Draft the draft
     */
    public void saveOrUpdate(Draft Draft) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(Draft);
        transaction.commit();
        session.close();
    }

    /**
     * Insert int.
     *
     * @param Draft the draft
     * @return the int
     */
    public int insert(Draft Draft) {
        int id = 0;
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        id = (int)session.save(Draft);
        transaction.commit();
        session.close();
        return id;
    }

    /**
     * Delete.
     *
     * @param Draft the draft
     */
    public void delete(Draft Draft) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(Draft);
        transaction.commit();
        session.close();
    }

    /**
     * Gets all.
     *
     * @return the all
     */
    public List<Draft> getAll() {

        Session session = sessionFactory.openSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Draft> query = builder.createQuery( Draft.class );
        Root<Draft> root = query.from( Draft.class );
        List<Draft> Drafts = session.createQuery( query ).getResultList();

        logger.debug("The list of Books " + Drafts);
        session.close();

        return Drafts;
    }
}

