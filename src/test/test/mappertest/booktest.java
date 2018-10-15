package mappertest;

import com.alibaba.fastjson.JSONObject;
import com.lsj.admin.mapper.Bookmapper;
import com.lsj.admin.model.Book;
import com.sun.source.tree.LambdaExpressionTree;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = "classpath:spring/spring-dao.xml")
public class booktest {
    @Autowired
    private Bookmapper mapper;
    /*统计数量*/
    @Test
    public void selectBysun()throws Exception{

        int i = mapper.selectBySun();
        System.out.println(i);

    }
    /*查询所有信息和分页*/
    @Test
    public void selectByall()throws Exception{
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("offset",0);
        jsonObject.put("limit",2);
        List<Book> books = mapper.selectByAll(jsonObject);
        System.out.println(books);

    }
    /*删除*/
    @Test
    public void  deleteByid()throws  Exception{

        Book book = new Book();
        book.setId(33);
        mapper.deleteById(book);

    }


}
