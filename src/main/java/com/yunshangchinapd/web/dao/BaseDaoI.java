package com.yunshangchinapd.web.dao;

import com.yunshangchinapd.web.vo.Pagination;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by peter on 2015/4/29.
 */
public interface BaseDaoI<M> {
    /**
     * 新建并保存一个对象
     *
     * @param model 持久对象
     */
    public void save(M model);

    /**
     * 删除一个对象
     *
     * @param model 对象实体
     */
    public void delete(M model);

    /**
     * 根据ID删除一个对象
     *
     * @param id         主键id
     *
     */
    public void delete(Serializable id);

    /**
     * 根据多个id删除多个对象
     *
     * @param ids        主键id数组
     * @return
     */
    public int delete(Serializable[] ids);

    /**
     * 修改一个对象
     *
     * @param model
     */
    public void update(M model);

    /**
     * 保存并更新一个对象. 如果对象已存在就更新否则新建保存
     *
     * @param model 持久对象
     */
    public void saveOrUpdate(M model);

    /**
     * 根据id和实体类型查询一个对象
     *
     * @param id         对象id
     * @return
     */
    public M get(Serializable id);

    public M get(String hql,Map<String,Object> args);

    /**
     *  根据id查询一个对象,懒加载
     * @param id
     * @return
     */
    public M load(Serializable id);

    /**
     * 得到所有的对象
     * @return 对象集合
     */
    public List<M> find();

    public List<M> find(Pagination pagination);

    /**
     * 根据条件并集或交集查询
     * @param model  并集查询条件
     * @param isAnd  规定查询条件是 or 还是 and
     * @return    对象集合
     */
    public List<M> find(M model,boolean isAnd);

    public List<M> find(Map<String,Object> args,boolean isAnd);

    /**
     *  根据条件并集或交集查询,带排序
     * @param sort
     * @param order
     * @param page
     * @param rows
     * @param isAnd  规定查询条件是 or 还是 and
     * @return
     */
    public List<M> find(M model,String sort,String order,int page,int rows,boolean isAnd);

    public List<M> find(String hql,Map<String,Object> args);
    /**
     * 排序分页查询数据
     * @param hql 查询语句
     * @param sort 排序属性
     * @param order 排列顺序 desc | asc
     * @param page 第几页
     * @param rows 每页行数
     * @return
     */
    public List<M> find(String hql,String sort,String order,int page,int rows);

    /**
     * 排序分页查询数据
     * @param hql 查询语句
     * @param args 查询条件
     * @param sort 排序属性
     * @param order 排列顺序 desc | asc
     * @param page 第几页
     * @param rows 每页行数
     * @return
     */
    public List<M> find(String hql,Map<String,Object> args,String sort,String order,int page,int rows);

    /**
     * 根据原始sql自定义查询
     * @param sql 本地sql语句
     * @return
     */
    public Object find(String sql,Class cls);

    /**
     * 统计数据计数
     * @return
     */
    public Long count();
    public Long count(String hql);
    public Long count(M model,boolean isAnd);
    public Long count(String hql,Map<String,Object>args);
}

