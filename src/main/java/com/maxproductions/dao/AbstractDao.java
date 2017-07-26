package com.maxproductions.dao;

import java.io.Serializable;

/**
 * Created by agarw on 05-06-2017.
 */

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by Amit Agarwal on 24-Apr-17.
 * Version :1
 * This is general Abstract Facade Class to fetch data from database using hibernate
 */
public abstract class AbstractDao<PK extends Serializable, T> {

    private final Class<T> persistentClass;


    public AbstractDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    public T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }

    public void persist(T entity) {
        getSession().persist(entity);
    }

    public void update(T entity) {
        getSession().update(entity);
    }

    public void delete(T entity) {
        getSession().delete(entity);
    }

    protected Criteria createEntityCriteria() {
        return getSession().createCriteria(persistentClass);
    }



    public List<T> listall(Class<T> cls) {
        List<T> entityList = getSession().createCriteria(cls).list();
        return entityList;
    }


}