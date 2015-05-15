package com.yunshangchinapd.web.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * User: Peter
 * Date: 13-11-1
 * Time: 下午1:50
 */
public class DataGrid implements Serializable {
    private List rows = new ArrayList();
    private long total;

    public List getRows() {
        return rows;
    }

    public void setRows(List rows) {
        this.rows = rows;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }
}
