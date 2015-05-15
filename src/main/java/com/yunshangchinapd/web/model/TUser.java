package com.yunshangchinapd.web.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by peter on 2015/4/29.
 */
@Entity
@Table(name="t_user")
public class TUser implements Serializable {
    private Long id;
    private String username,pwd,showname;
    private Date createTime;
    private boolean isLockStatus;
    private Date lockedTime;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="user_id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(length = 30,nullable = false,unique = true)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(length = 64,columnDefinition = "char(64)",nullable = false)
    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Temporal(TemporalType.TIMESTAMP)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public boolean isLockStatus() {
        return isLockStatus;
    }

    public void setLockStatus(boolean isLockStatus) {
        this.isLockStatus = isLockStatus;
    }
    @Temporal(TemporalType.TIMESTAMP)
    public Date getLockedTime() {
        return lockedTime;
    }

    public void setLockedTime(Date lockedTime) {
        this.lockedTime = lockedTime;
    }

    @Column(length = 30)
    public String getShowname() {
        return showname;
    }

    public void setShowname(String showname) {
        this.showname = showname;
    }
}
