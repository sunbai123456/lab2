<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
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
<%--     <script>function onLeave(){event.returnValue="sure to leave?";}</script> --%>
</head>
<body onbeforeunload="return myfunction()">
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

<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-6 column">
			<form role="form" action="add" onsubmit=" return check(this)">
			    <center><b><h2>更新书籍</h2></b></center>
			    <div class="alert alert-dismissable alert-info">
				 <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4>
					<strong>注意!</strong>
				</h4>ISBN 和 Tile 禁止修改
			</div>

				<div class="form-group">
					 <label for="exampleInputEmail1">ISBN</label><input name = "ISBN"  class="form-control" disabled ="true" id="exampleInputEmail1" value="<s:property value="ISBN"/>"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Title</label><input name = "Title"  class="form-control" disabled ="true" id="exampleInputPassword1" value="<s:property value="Title"/>"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Author ID</label><input name = "AuthorID"  class="form-control" id="exampleInputPassword1" value="<s:property value="AuthorID"/>" required="true"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Publisher</label><input name = "Publisher"  class="form-control" id="exampleInputPassword1" value="<s:property value="Publisher"/>" required="true"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Publish Date</label><input name = "PublishDate"  pattern = "[0-9]{4}-([0-9][1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])" class="form-control" id="exampleInputPassword1" value="<s:property value="PublishDate"/>" required="true"/>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Price</label><input name = "Price"  class="form-control" id="exampleInputPassword1" value="<s:property value="Price"/>" pattern="[0-9]+(\.[0-9]+)?" required="true"/>
				</div>
				
				<input type="hidden" name="update" value="true" />
				<input type="hidden" name="ISBN" value="<s:property value='ISBN'/>" />
				<input type="hidden" name="Title" value="<s:property value='Title'/>" />
			    <button type="submit" class="btn btn-default" >保存</button>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>
</body>
</html>