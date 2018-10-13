package com.lsj.admin.mapper;

import com.alibaba.fastjson.JSONObject;

import com.lsj.admin.model.Book;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface Bookmapper {
    /*查询所有书*/
    public List<Book> selectByAll(JSONObject jsonObject)throws  Exception;
    /*统计书数量*/
    public int selectBySun()throws Exception;
    /*通过id查询*/
    public List<Book> selectByID(Book book)throws Exception;
    /*通过id删除图书*/
    public void deleteById(Book book)throws Exception;
    /*通过id来修改*/
    public void updateByid(Book Book)throws Exception;
    /*添加*/
    public void insertBY(Book book)throws Exception;
}
