package com.yunshangchinapd.web.dao.impl;

import com.yunshangchinapd.web.dao.BaseDaoI;
import com.yunshangchinapd.web.util.BeanConverter;
import com.yunshangchinapd.web.vo.Pagination;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by peter on 2015/4/29.
 */
public class BaseDaoImpl<T> implements BaseDaoI<T>{
    private Class<T> clazz;
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public BaseDaoImpl() {
        //得到泛型的class
        ParameterizedType parameterizedType = (ParameterizedType) this.getClass().getGenericSuperclass();
        clazz = (Class<T>) parameterizedType.getActualTypeArguments()[0];
    }

    @Override
    public void save(T model) {
        this.getSession().save(model);
    }

    @Override
    public void delete(T model) {
        this.getSession().delete(model);
    }

    @Override
    public void delete(Serializable id) {
        //String hql = "from " + clazz.getName() + " where id = :id";
        //this.getSession().createQuery(hql).setParameter("id", id).executeUpdate();
        T obj = (T) getSession().get(clazz,id);
        getSession().delete(obj);
    }

    @Override
    public int delete(Serializable[] ids) {
        if (ids == null || ids.length < 1) return -1;
        String hql = "from " + clazz.getName() + " where id in(:ids)";
        Map<String,Object> params = new HashMap<String, Object>();
        params.put("ids",ids);
        return this.getSession().createQuery(hql).setProperties(params).executeUpdate();
    }

    @Override
    public void update(T model) {
        this.getSession().update(model);
    }

    @Override
    public void saveOrUpdate(T model) {
        this.getSession().saveOrUpdate(model);
    }

    @Override
    public T get(Serializable id) {
        return (T) this.getSession().get(clazz, id);
    }

    @Override
    public T get(String hql, Map<String, Object> args) {
        return (T) this.getSession().createQuery(hql).setProperties(args).uniqueResult();
    }

    @Override
    public T load(Serializable id) {
        return (T) this.getSession().load(clazz, id);
    }

    @Override
    public List<T> find() {
        return this.getSession().createCriteria(clazz).list();
    }

    @Override
    public List<T> find(Pagination pagination) {
        Order order = pagination.getOrder().equalsIgnoreCase("desc") ? Order.desc(pagination.getSort()) : Order.asc(pagination.getSort());
        return this.getSession().createCriteria(clazz).setFirstResult((pagination.getPage() - 1) * pagination.getRows()).setMaxResults(pagination.getRows()).addOrder(order).list();
    }

    @Override
    public List<T> find(T model, boolean isAnd) {
        Map<String, Object> map = BeanConverter.beanToMapWithNotNull(model);
        if (map == null || map.size() < 1) return null;
        String hql = null;
        if (isAnd) hql = this.getHqlWithNotNullAndEq(map);
        else hql = this.getHqlWithNotNullOrEq(map);
        return this.getSession().createQuery(hql).setProperties(map).list();
    }

    @Override
    public List<T> find(Map<String, Object> args, boolean isAnd) {
        if (args == null || args.isEmpty()) return null;
        if (isAnd) return getSession().createQuery(getHqlWithNotNullAndEq(args)).setProperties(args).list();
        else return getSession().createQuery(getHqlWithNotNullOrEq(args)).setProperties(args).list();
    }

    @Override
    public List<T> find(T model, String sort, String order, int page, int rows, boolean isAnd) {
        Map<String, Object> map = BeanConverter.beanToMapWithNotNull(model);
        if (map == null || map.size() < 1) return null;
        String hql = null;
        if (isAnd) hql = this.getHqlWithNotNullAndEq(map);
        else hql = this.getHqlWithNotNullOrEq(map);
        hql = this.getHqlWithOrderBy(hql, sort, order);
        return this.getSession().createQuery(hql).setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

    @Override
    public List<T> find(String hql, Map<String, Object> args) {
        if (StringUtils.isEmpty(hql) || args == null) return null;
        return this.getSession().createQuery(hql).setProperties(args).list();
    }

    @Override
    public List<T> find(String hql, String sort, String order, int page, int rows) {
        if (StringUtils.isEmpty(hql)) return null;
        hql = this.getHqlWithOrderBy(hql, sort, order);
        return this.getSession().createQuery(hql).setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

    @Override
    public List<T> find(String hql, Map<String, Object> args, String sort, String order, int page, int rows) {
        if (StringUtils.isEmpty(hql) || args == null || args.isEmpty()) return null;
        hql = this.getHqlWithOrderBy(hql, sort, order);
        return this.getSession().createQuery(hql).setProperties(args).setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

    @Override
    public Object find(String sql, Class cls) {
        if (StringUtils.isEmpty(sql)) return null;
        return this.getSession().createSQLQuery(sql).addEntity(cls).list();
    }

    @Override
    public Long count() {
        return (Long) this.getSession().createQuery("select count(*) from " + clazz.getName()).uniqueResult();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public Long count(String hql) {
        if (StringUtils.isEmpty(hql)) return null;
        return (Long) this.getSession().createQuery(hql).uniqueResult();
    }

    @Override
    public Long count(T model, boolean isAnd) {
        Map<String, Object> map = BeanConverter.beanToMapWithNotNull(model);
        if (map == null || map.size() < 1) return null;
        String hql = null;
        if (isAnd) hql = this.getHqlWithNotNullAndEq(map);
        else hql = this.getHqlWithNotNullOrEq(map);
        return (Long) this.getSession().createQuery(hql).uniqueResult();
    }

    @Override
    public Long count(String hql, Map<String, Object> args) {
        if (StringUtils.isEmpty(hql)) return null;
        return (Long) this.getSession().createQuery(hql).setProperties(args).uniqueResult();
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    private String getHqlWithNotNullAndEq(Map<String, Object> map) {
        StringBuilder hql = new StringBuilder();
        hql.append("from " + clazz.getName() + " where ");
        Set<String> set = map.keySet();
        for (String str : set) {
            hql.append(str).append("=").append(":").append(str).append(" and ");
        }
        hql.delete(hql.lastIndexOf("and"), hql.length());
        System.out.println(hql.toString());
        return hql.toString();
    }

    private String getHqlWithNotNullOrEq(Map map) {
        StringBuilder hql = new StringBuilder();
        hql.append("from " + clazz.getName() + " where ");
        Set<String> set = map.keySet();
        for (String str : set) {
            hql.append(str).append("=").append(":").append(str).append(" or ");
        }
        hql.delete(hql.lastIndexOf("or"), hql.length());
        System.out.println(hql.toString());
        return hql.toString();
    }

    private String getHqlWithOrderBy(String hql, String sort, String order) {
        if (StringUtils.isEmpty(sort) || StringUtils.isEmpty(order)) return hql;
        return hql += " order by " + sort + " " + order;
    }
}

