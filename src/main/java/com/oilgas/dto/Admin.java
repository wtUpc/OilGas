package com.oilgas.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/5/27.
 */
@Data
public class Admin {
    private String userName;
    private String passWord;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
}
