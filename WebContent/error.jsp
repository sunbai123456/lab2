<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>图书管理系统</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bg.css" type="text/css"> 
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/style.css">
</head>
<body>
    <nav class="navbar navbar-inverse  site-navbar" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="sr-only">切换导航</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/lab2" style="color: white">图书管理系统</a>
	</div>
	<div>
          <ul class="nav navbar-nav navbar-right">
          <form class="navbar-form navbar-left " role="search" action="queryname">
						<div class="form-group ">
							<input type="text" class="form-control" placeholder=作者姓名 name="authorname">
						</div> <button type="submit" class="btn glyphicon glyphicon-search btn-default"></button>
		 </form>
          <li><a href="/lab2" style="color: white"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                                                 功能 <b class="caret"></b>	
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/lab2/queryname">展示所有书籍</a></li>
                   <!--  <li><a href="#">EJB</a></li>
                    <li><a href="#">Jasper Report</a></li> -->
                    <li class="divider"></li>
                    <li><a href="/lab2/add.jsp">增加新书</a></li>
                </ul>
            </li>
        </ul>
    </div>
	</div>
</nav>

<b>查询失败！库中无该记录</b>
</body>
</html>