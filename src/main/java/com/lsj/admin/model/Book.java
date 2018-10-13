package com.lsj.admin.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Book {

    /*`id` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publish` varchar(100) NOT NULL,
  `publishdate` date NOT NULL,
  `Page` int(5) DEFAULT NULL,
  `Price` double(4,1) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)*/
    private Integer id;
    private String sname;
    private String author;
    private String publish;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date publishdate;
    private Integer page;
    private Double price;
    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish;
    }

    public Date getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(Date publishdate) {
        this.publishdate = publishdate;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public Book() {
        super();
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", sname='" + sname + '\'' +
                ", author='" + author + '\'' +
                ", publish='" + publish + '\'' +
                ", publishdate=" + publishdate +
                ", page=" + page +
                ", price=" + price +
                ", content='" + content + '\'' +
                '}';
    }
}
