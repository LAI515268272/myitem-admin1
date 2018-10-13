package com.lsj.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.lsj.admin.model.Book;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface Bookservice {
    /*查询所有书*/
    public List<Book> findeAll(JSONObject jsonObject)throws  Exception;
    /*统计书数量*/
    public int fincunt()throws Exception;
    /*通过id查询*/
    public List<Book> findByid(Book book)throws Exception;
    /*通过id删除图书*/
    public void deleteById(Book book)throws Exception;
    /*添加*/
    public void inserby(Book book)throws Exception;
    /*修改*/
    public void updateByID(Book book)throws Exception;

}
