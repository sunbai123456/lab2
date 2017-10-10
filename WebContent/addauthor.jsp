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

<script type="text/javascript">
	function check(form) {
		if (form.AuthorID.value == "") {
			alert("作者id不能为空");
			return false;
		}
		if (form.Name.value == "") {
			alert("作者姓名不能为空");
			return false;
		}
		if (form.Age.value == "") {
			alert("作者年龄不能为空");
			return false;
		}
		if (form.Country.value == "") {
			alert("作者国籍不能为空");
			return false;
		}
		return true;
	}
</script>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-2 column">
		</div>
		<div class="col-md-6 column">
			<form role="form" action="addauthor" method=post onsubmit="return check(this)">
			    <center><b><h2>该作者不在库中，需增加新作者</h2></b></center>
				<div class="form-group">
					 <label for="exampleInputEmail1">AuthorID</label><input name = "AuthorID" value="<s:property value='#request.authorid' />" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Name</label><input name = "Name"  class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Age</label><input name = "Age"  class="form-control" id="exampleInputPassword1" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">Country</label><input name = "Country"  class="form-control" id="exampleInputPassword1" />
				</div>
				
			    <button type="submit" class="btn btn-default">保存</button>
			</form>
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>
</body>
</html>