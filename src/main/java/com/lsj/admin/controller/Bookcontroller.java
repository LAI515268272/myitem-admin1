package com.lsj.admin.controller;

import com.alibaba.fastjson.JSONObject;
import com.lsj.admin.model.Book;
import com.lsj.admin.service.Bookservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Date;
import java.util.List;

@Controller
public class Bookcontroller {
    @Autowired
    public Bookservice ser;

    @RequestMapping("/index")
    public String index(){

        return  "index";
    }
    /*@RequestMapping("table-basic")
    public String basic(){


        return "table-basic";
    }*/
    /*展示所有和分页*/
    @ResponseBody
    @RequestMapping(value = "/booklist",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject booklist(@RequestBody JSONObject jsonObject)throws Exception{
        System.out.println(jsonObject);

       List<Book> books =ser.findeAll(jsonObject);
        int bk = ser.fincunt();


        JSONObject js = new JSONObject();
        js.put("total",bk);
        js.put("rows",books);


        return js;
    }


    /*删除*/

    @RequestMapping(value = "/delebyid",method =RequestMethod.POST)
    public void deletebook(Book book){

        try {
            ser.deleteById(book);
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
    /*添加*/

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String inserby(Book book){
        System.out.println(book);
        try {
            ser.inserby(book);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/table-data-table";
    }

    @RequestMapping(value = "/deit",method = RequestMethod.POST)
    public void bookbyid(Book book){
        Date date = new Date();
        Book bok = new Book();
        bok.setPublishdate(date);

        try {
            ser.updateByID(book);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    @RequestMapping("/table-data-table")
    public String tables(){

        return "table-data-table";
    }




}
