package com.yunshangchinapd.web.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Togo on 2015/5/5.
 */
@Entity
@Table(name="t_article")
public class TArticle implements Serializable {
    private Long id; //文章ID
    private Integer visitedCount; //文章访问次数
    private String title,resume,content,keyword;//标题,简述,内容,关键字
    private Date createTime,publishTime,modifyTime;//创建时间,发布时间,修改时间
    private boolean online,delStatus;//是否上线,是否删除
    private TCategory category;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="article_id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getVisitedCount() {
        return visitedCount;
    }

    public void setVisitedCount(Integer visitedCount) {
        this.visitedCount = visitedCount;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    @Lob
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public boolean isOnline() {
        return online;
    }

    public void setOnline(boolean online) {
        this.online = online;
    }


    @ManyToOne(targetEntity = TCategory.class)
    public TCategory getCategory() {
        return category;
    }

    public void setCategory(TCategory category) {
        this.category = category;
    }

    public boolean isDelStatus() {
        return delStatus;
    }

    public void setDelStatus(boolean delStatus) {
        this.delStatus = delStatus;
    }
}
