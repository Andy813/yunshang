package com.yunshangchinapd.web.vo;

import java.io.Serializable;

/**
 * User: Peter
 * Date: 13-11-1
 * Time: 下午2:36
 */
public class Pagination implements Serializable{
    private int page,rows;
    private String sort,order;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }
}
