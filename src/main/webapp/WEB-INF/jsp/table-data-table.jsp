<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="static/css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.jsp">Vali</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
          <ul class="app-notification dropdown-menu dropdown-menu-right">
            <li class="app-notification__title">You have 4 new notifications.</li>
            <div class="app-notification__content">
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Lisa sent you a mail</p>
                    <p class="app-notification__meta">2 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Mail server not working</p>
                    <p class="app-notification__meta">5 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Transaction complete</p>
                    <p class="app-notification__meta">2 days ago</p>
                  </div></a></li>
              <div class="app-notification__content">
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Lisa sent you a mail</p>
                      <p class="app-notification__meta">2 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Mail server not working</p>
                      <p class="app-notification__meta">5 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Transaction complete</p>
                      <p class="app-notification__meta">2 days ago</p>
                    </div></a></li>
              </div>
            </div>
            <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
          </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">John Doe</p>
          <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="index.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
            <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
            <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
            <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">Charts</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Form Components</a></li>
            <li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Custom Components</a></li>
            <li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Form Samples</a></li>
            <li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Form Notifications</a></li>
          </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="table-basic"><i class="icon fa fa-circle-o"></i> Basic Tables</a></li>
            <li><a class="treeview-item active" href="table-data-table"><i class="icon fa fa-circle-o"></i> Data Tables</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="blank-page.jsp"><i class="icon fa fa-circle-o"></i> Blank Page</a></li>
            <li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a></li>
            <li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen Page</a></li>
            <li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a></li>
            <li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice Page</a></li>
            <li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a></li>
            <li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a></li>
            <li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a></li>
          </ul>
        </li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Data Table</h1>
          <p>Table to display analytical data effectively</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table id="mytable" style="text-align: center">
                  <button type="button" class="btn btn-info" id="btn1">新增</button>


              </table>
            </div>
          </div>
        </div>
      </div>
    </main>

    <div class="row">
        <div class="modal c" id="myModal">
            <div class="modal-dialog modal-lg  ">
                <div class="modal-content">
                    <div class="modal-header ">
                        <h1>添加图书</h1>
                        <button type="button" class="close" data-dismiss="modal">关闭</button>

                    </div>
                    <div class="modal-body">
                        <form action="add"   method="post" class="form-horizontal" id="form1">


                            <div class="form-group">
                                <label for="sname" class="col-md-3 control-label">书名<span style="color: red">(*)</span>:</label>
                                <div class="col-md-7">
                                    <input type="text" name="sname" id="sname" class="form-control" placeholder="请输入书名"/>

                                </div>

                            </div>
                            <div class="form-group">
                                <label for="author" class="col-md-3 control-label">作者<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <input type="text" name="author" id="author" class="form-control" placeholder="请输入作者"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="publish" class="col-md-3 control-label">出版社<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <input type="text" name="publish" id="publish" class="form-control" placeholder="请输入作者"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="publishdate" class="col-md-3 control-label">出版日期<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-3">
                                    <input type="date" name="publishdate" id="publishdate" class="form-control" />
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="page" class="col-md-3 control-label">页数<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-3">
                                    <input type="text" name="page" id="page" class="form-control" placeholder="请输入页数"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="price" class="col-md-3 control-label">价格<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-3">
                                    <input type="text" name="price" id="price" class="form-control" placeholder="请输入价格"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="content" class="col-md-3 control-label">内容摘要<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <textarea name="content" id="content" placeholder="请输入内容摘要" class="form-control"></textarea>
                                </div>

                            </div>
                            <di class="col-md-12">
                                <button type="submit" class="btn btn-primary">添加</button>


                            </di>


                        </form>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="modal c" id="myModal2">
            <div class="modal-dialog modal-lg  ">
                <div class="modal-content">
                    <div class="modal-header ">
                        <h2>  编辑图书</h2>
                        <button type="button" class="close" data-dismiss="modal">关闭</button>

                    </div>
                    <div class="modal-body">
                        <form action="deit"   method="post" class="form-horizontal" id="form2">


                            <input type="hidden" name="id" id="id2"/>
                            <div class="form-group">
                                <label for="sname" class="col-md-3 control-label">书名<span style="color: red">(*)</span>:</label>
                                <div class="col-md-7">
                                    <input type="text" name="sname" id="sname2" class="form-control" placeholder="请输入书名"/>

                                </div>

                            </div>
                            <div class="form-group">
                                <label for="author" class="col-md-3 control-label">作者<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <input type="text" name="author" id="author2" class="form-control" placeholder="请输入作者"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="publish" class="col-md-3 control-label">出版社<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <input type="text" name="publish" id="publish2" class="form-control" placeholder="请输入作者"/>
                                </div>

                            </div>

                            <div class="form-group">
                                <label for="page" class="col-md-3 control-label">页数<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-3">
                                    <input type="text" name="page" id="page2" class="form-control" placeholder="请输入页数"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="price" class="col-md-3 control-label">价格<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-3">
                                    <input type="text" name="price" id="price2" class="form-control" placeholder="请输入价格"/>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="content" class="col-md-3 control-label">内容摘要<span style="color: red">(*)</span>  :</label>
                                <div class="col-md-7">
                                    <textarea name="content" id="content2" placeholder="请输入内容摘要" class="form-control"></textarea>
                                </div>

                            </div>
                            <di class="col-md-12">
                                <button type="button" class="btn btn-primary" onclick="bianji()">保存</button>


                            </di>


                        </form>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Essential javascripts for application to work-->
    <script src="static/js/jquery-3.2.1.min.js"></script>
    <script src="static/js/popper.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="static/js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <!--<script type="text/javascript" src="static/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="static/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>-->
    <!-- Latest compiled and minified JavaScript -->
    <script src="Http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>

    <!-- Latest compiled and minified Locales -->
    <script src="Http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript">

        /*表单*/
      $(function () {

          $("#mytable").bootstrapTable({

              url:'booklist',
              dataType:"json",
              contentType:'application/json',
              search: true,
              pagination: true,  //开启分页
              sidePagination: 'server',//服务器端分页
              pageNumber: 1,//默认加载页
              pageSize: 3,
              /*sortName:undefined,*/
              sortOrder:'desc',
              method: 'post',
              columns:[{
                  field:'id',
                  title:'序列'
              },{
                  field:'sname',
                  title:'书名'
              },{
                  field:'author',
                  title:'作者'
              },{
                  field:'publish',
                  title:'出版社'

              },{
                  field:'page',
                  title:'页数'

              },{
                  field:'price',
                  title:'价格'

              },{
                  field:'content',
                  title:'摘要内容'

              },{
                  field:'button',
                  title:'操作',
                  events:operateEvents,
                  formatter:AddFunctionAlty,
              }]


          });
          
      });
      function AddFunctionAlty(value,row,index) {
            /*添加编辑按钮和删除按钮*/
          return[
                '<button id="Editors" type="button" class="btn btn-primary" >编辑</button>&nbsp;&nbsp;&nbsp;&nbsp;',
                '&nbsp;&nbsp;&nbsp;&nbsp;<button id="Deletes"type="button" class="btn btn-danger" >删除</button>&nbsp;&nbsp;&nbsp;&nbsp;',

          ].join("")
          
      }
      /*编辑和删除按钮事件*/
      window.operateEvents={
          /*编辑*/
          "click #Editors":function(e,value,row,index){
              //alert(value);
              <!--弹出模态框-->
              $('#myModal2').modal();

              <!--点击编辑给模态框里的input赋值-->

              $('#sname2').val(row.sname);
              $('#author2').val(row.author);
              $('#publish2').val(row.publish);
              $('#publishdate2').val(row.publishdate);


              $('#page2').val(row.page);
              $('#price2').val(row.price);
              $('#content2').val(row.content);
              $('#id2').val(row.id);







          },
          /*删除*/
          "click #Deletes":function(e,value,row,index){
              if(confirm("确定删除吗？")){

                  var param="id="+row.id;
                  $.post("delebyid",param);
                  location.href="table-data-table";


              }
          },


      }
      /*添加模态框*/
        $('#btn1').click(function () {
            $('#myModal').modal();
        });
        /*编辑*/
        function bianji() {
            var panme = $('#form2').serialize();
            $.post('deit',panme);
            location.href="table-data-table"
        }
       /*<!--添加按钮js-->
        function tianjia(){
            var parname = $("#form1").serialize();
            alert(parname);
            $.ajax({
                uri:"add",
                type:"post",
                dataType:"text",
                date:parname,
                success:function (ww) {

                    alert(ww);
                }
            });
        };*/



    </script>

    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>

  </body>
</html>