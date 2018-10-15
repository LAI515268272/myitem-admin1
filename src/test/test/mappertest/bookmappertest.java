package mappertest;

import com.alibaba.fastjson.JSONObject;
import com.lsj.admin.mapper.Bookmapper;
import com.lsj.admin.model.Book;
import com.lsj.admin.service.Bookservice;
import com.lsj.admin.service.Booksservice;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class bookmappertest {
    @Autowired
    private Bookservice ser;
    /*查询所有*/
    @Test
    public void selectbyall() throws  Exception{

        JSONObject jsonObject =new JSONObject();
        jsonObject.put("offset",0);
        jsonObject.put("limit",2);

        List<Book> books = ser.findeAll(jsonObject);
        System.out.println(books);

    }
    /*统计数量*/
    @Test
    public void counts()throws Exception{

        System.out.println(ser.fincunt());
    }
    /*添加*/
    @Test
    public void insert()throws Exception{
        Date date = new Date();
        Book book = new Book();
        book.setSname("122");
        book.setAuthor("123");
        book.setContent("122");

        book.setPublish("122");
        book.setPublishdate(date);
        ser.inserby(book);

    }
    /*删除*/
    @Test
    public void delete()throws Exception{

        Book b= new Book();
        b.setId(31);
        ser.deleteById(b);

    }
    /*通过id查询*/
    @Test
    public void selsectByid()throws Exception{

        Book b=new Book();
        b.setId(32);
        System.out.println(ser.findByid(b));
    }
    /*修改*/
    @Test
    public void updateById()throws Exception{
        Date date =new Date();
        Book book = new Book();
        book.setId(28);
        book.setSname("C++");
        book.setAuthor("何超");
        book.setPublish("北京出版社");
        book.setPublishdate(date);
        book.setPage(400);
        book.setPrice(26.5);
        book.setContent("C语言");
        ser.updateByID(book);

    }

}
