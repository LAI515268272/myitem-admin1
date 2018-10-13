package com.lsj.admin.service;

import com.alibaba.fastjson.JSONObject;
import com.lsj.admin.mapper.Bookmapper;
import com.lsj.admin.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
public class Booksservice implements Bookservice {

    @Autowired
    private Bookmapper mapper;

    /*查询所有*/
    @Override
    public List<Book> findeAll(JSONObject jsonObject) throws Exception {

        return mapper.selectByAll(jsonObject);
    }
    /*查询数量*/
    @Override
    public int fincunt() throws Exception {
        return mapper.selectBySun();
    }
    /*通过id来查询*/
    @Override
    public List<Book> findByid(Book book) throws Exception {
        return mapper.selectByID(book);
    }

    /*通过id来删除*/
    @Override
    public void deleteById(Book book) throws Exception {

        mapper.deleteById(book);
    }
    /*添加*/
    @Override
    public void inserby(Book book) throws Exception {
        mapper.insertBY(book);
    }
    /*编辑*/
    @Override
    public void updateByID(Book book) throws Exception {
        mapper.updateByid(book);
    }
}
