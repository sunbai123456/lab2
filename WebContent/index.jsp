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
    <nav class="navbar navbar-inverse navbar-fixed-top site-navbar" role="navigation">
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
          <form class="navbar-form navbar-left " role="search" action="queryname" method=“post”>
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
        <div class="full-length">
            <div class="container">
                <div class=	"team-members row">
                
                
                    <div class="single-member effect-1">
                         <div class="member-image">
                            <img src="image/1.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>世界的凛冬</h3>
                            <h5>肯·福莱特(Ken Follett)</h5>
                            <p>ISBN:9787539999074</p>
                            <P>出版社：江苏凤凰文艺出版社出版日期:2016-11-30  价格:CNY132.00</p>
                            <div class="social-touch">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                    <div class="single-member effect-2">
                        <div class="member-image">
                            <img src="image/2.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>永恒的边缘</h3>
                            <h5>肯·福莱特(Ken Follett)</h5>
                            <p>ISBN:9787559403223</p>
                            <P>出版社：江苏凤凰文艺出版社出版日期:2016-11-30 价格:CNY168.00</p>
                            <div class="social-touch">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                    <div class="single-member effect-3">
                        <div class="member-image">
                            <img src="image/3.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h3>巨人的陨落</h3>
                            <h5>肯·福莱特(Ken Follett)</h5>
                            <p>ISBN:9787539989891</p>
                            <P>出版社：江苏凤凰文艺出版社出版日期:2016-11-30 价格:CNY168.00</p>
                            <div class="social-touch">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                     <div class="single-member effect-4">
                        <div class="member-image">
                            <img src="image/5.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h4>冰与火之歌卷一-列王的纷争上</h4>
                            <h5>乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                            <p>ISBN:9787229047221</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                        <div class="border-green"></div>
                    </div>



                    <div class="single-member effect-5">
                        <div class="member-image">
                            <img src="image/6.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h4>冰与火之歌卷一-列王的纷争中</h4>
                            <h5>乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                            <p>ISBN:9787229047238</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                    <div class="single-member effect-6">
                        <div class="member-image">
                            <img src="image/7.jpg" alt="Member">
                        </div>
                        <div class="member-info">
                            <h4>冰与火之歌卷一-列王的纷争下</h4>
                            <h5>乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                            <p>ISBN:9787229047245</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                        <div class="border-green"></div>
                    </div>



                    <div class="single-member effect-7">
                        <div class="member-info">
                            <h3>冰与火之歌卷二(全3册)-冰雨的风暴</h3>
                            <h5>S乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                        </div>
                        <div class="member-image">
                            <img src="image/8.jpg" alt="Member">
                        </div>
                        <div class="more-info">
                            <p>ISBN:9787229049270</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                    <div class="single-member effect-8">
                        <div class="member-info">
                            <h3>冰与火之歌卷四-群鸦的盛宴下</h3>
                            <h5>S乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                            <p>ISBN:9787229056797</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                        </div>
                        <div class="member-image">
                            <img src="image/9.jpg" alt="Member">
                        </div>
                        <div class="more-info">
                           
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>



                    <div class="single-member effect-9">
                        <div class="member-info">
                            <h3>冰与火之歌卷四-群鸦的盛宴中</h3>
                            <h5>S乔治·R·R·马丁(George Raymond Richard Martin)</h5>
                            <p>ISBN:9787229047245</p>
                            <p>出版社：重庆出版社</p>   
                            <p>日期:2011-11-30价格:CNY26.00</p>
                        </div>
                        <div class="member-image">
                            <img src="image/10.jpg" alt="Member">
                        </div>
                        <div class="more-info">
                            <div class="social-touch icon-colored">
                                <a class="fb-touch" href="#"></a>
                                <a class="tweet-touch" href="#"></a>
                                <a class="linkedin-touch" href="#"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    

</body>


</html>