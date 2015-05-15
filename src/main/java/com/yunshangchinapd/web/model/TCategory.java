package com.yunshangchinapd.web.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Togo on 2015/5/5.
 */
@Entity
@Table(name = "t_category")
public class TCategory implements Serializable {
    private Long id; //类别ID
    private String menuname,url;//文章类别,url连接
    private Integer seqs;//类别排序
    private boolean status, delStatus;//是否有效,是否删除
    private Date createTime, modifyTime;
    private List<TArticle> articles = new ArrayList<TArticle>();

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "category_id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }

    public Integer getSeqs() {
        return seqs;
    }

    public void setSeqs(Integer seqs) {
        this.seqs = seqs;
    }

    public boolean isDelStatus() {
        return delStatus;
    }

    public void setDelStatus(boolean delStatus) {
        this.delStatus = delStatus;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    public List<TArticle> getArticles() {
        return articles;
    }

    public void setArticles(List<TArticle> articles) {
        this.articles = articles;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
