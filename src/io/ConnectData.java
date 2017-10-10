package io;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

public class ConnectData {
	 
	public static ArrayList<String> searchname(String AuthorName) {  
		ArrayList<String> result = new ArrayList<String>();
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");
	          String select = "select title from book";
	          String selectWithCondition = "select title from book where authorid in (select authorid from author where name=?)";
	          String sql = ("".equals(AuthorName))?select:selectWithCondition;
	          PreparedStatement stmt = (PreparedStatement) connect.prepareStatement(sql);
	          if(!"".equals(AuthorName)) stmt.setString(1, AuthorName);
	          PreparedStatement stmt1 = (PreparedStatement) connect.prepareStatement("delete from book where AuthorID = 666");
        	  stmt1.executeUpdate();
	          ResultSet rs = stmt.executeQuery();  
	          while (rs.next()) {  
	        	  result.add(rs.getString("title"));
	             } 
	         // System.out.print("链接数据库："+result.get(0)+ AuthorName);
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
		return result;  
	     }  
	public static ArrayList<String> searchbook(String BookName) {  
		ArrayList<String> result = new ArrayList<String>();
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");  
	          PreparedStatement stmt = (PreparedStatement) connect.prepareStatement("select * from book,author where book.Title=? and book.AuthorID=author.AuthorID");
	          stmt.setString(1, BookName);
	          ResultSet rs = stmt.executeQuery();  
	          while (rs.next()) {  
	        	  result.add(rs.getString("ISBN"));
	        	  result.add(rs.getString("Title"));
	        	  result.add(rs.getString("AuthorID"));
	        	  result.add(rs.getString("Publisher"));
	        	  result.add(rs.getString("PublishDate"));
	        	  result.add(rs.getString("Price"));
	        	  result.add(rs.getString("Name"));
	        	  result.add(rs.getString("Age"));
	        	  result.add(rs.getString("Country"));
	             }  
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
		return result;  
	     }  
	public static boolean deletebook(String BookName){
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");  
	          PreparedStatement stmt = (PreparedStatement) connect.prepareStatement("delete from book where Title=?");
	          stmt.setString(1, BookName);
	          int result = stmt.executeUpdate();
	          if(result == 0) return false;
	          else return true;
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
		return false;
		
	}
    public static boolean addbook(ArrayList<String> message)
    {
		boolean flag=true;
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");  
	          PreparedStatement stmt = (PreparedStatement) connect.prepareStatement("select * from author where AuthorID = ?");
	          //stmt.setString(1, message.get(2));
	          stmt.setInt(1,Integer.valueOf(message.get(2)));
	          ResultSet rs = stmt.executeQuery();  
	          if (!rs.next())  flag=false;
	          String sql;
	          PreparedStatement stmt1;
	          //System.out.println(flag);
	          /*检测是否是由update传来的参数*/
	          if("true".equals(message.get(6)))
	          {
	        	  sql = "Update book set AuthorId=?,Publisher=?,PublishDate=?,Price=? where ISBN = ?";
	        	  stmt1 = (PreparedStatement) connect.prepareStatement(sql);
	        	  stmt1.setInt(1,Integer.valueOf(message.get(2)));
	        	  stmt1.setString(2,message.get(3));
	        	  stmt1.setString(3,message.get(4));
	        	  stmt1.setString(4,message.get(5));
	        	  stmt1.setString(5,message.get(0));
	          }
	          else
	          {
	        	  sql = "INSERT INTO book(ISBN,Title, AuthorID,Publisher,PublishDate,Price)values(?,?,?,?,?,?)"; 
	        	  stmt1 = (PreparedStatement) connect.prepareStatement(sql);
	        	  stmt1.setString(1,message.get(0));
	        	  stmt1.setString(2,message.get(1));
	        	  if(flag == false) stmt1.setInt(3,666);
	        	  else stmt1.setInt(3,Integer.valueOf(message.get(2)));
	        	  stmt1.setString(4,message.get(3));
	        	  stmt1.setString(5,message.get(4));
	        	  stmt1.setString(6,message.get(5)); 
	          }
        	  stmt1.executeUpdate();
        	  //System.out.println(flag);
	          return flag;
	          
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
		return flag;
    	
    }
    public static ArrayList<String> updatebook(String BookName){
    	ArrayList<String> result = new ArrayList<String>();
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");  
	          PreparedStatement stmt = (PreparedStatement) connect.prepareStatement("select * from book,author where book.Title=? and book.AuthorID=author.AuthorID");
	          stmt.setString(1, BookName);
	          ResultSet rs = stmt.executeQuery();  
	          while (rs.next()) 
	          {  
	        	  result.add(rs.getString("ISBN"));
	        	  result.add(rs.getString("Title"));
	        	  result.add(rs.getString("Publisher"));
	        	  result.add(rs.getString("PublishDate"));
	        	  result.add(rs.getString("Price"));
	        	  result.add(rs.getString("AuthorID"));
	           } 

	          return result;
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
    	
		return result;
    	
    }
    public static boolean addauthor(ArrayList<String> message)
    {
		
		try {  
	          Class.forName("com.mysql.jdbc.Driver");  //加载MYSQL JDBC驱动程序  
	          //Class.forName("org.gjt.mm.mysql.Driver");  
	          System.out.println("Success loading Mysql Driver!");  
	         }catch (Exception e) {  
	          System.out.print("Error loading Mysql Driver!");  
	          e.printStackTrace();  
	     }  
	     try{  
	          Connection connect = DriverManager.getConnection(  
	           "jdbc:mysql://localhost:3306/bookdb?characterEncoding=UTF-8","1264351015","sunmeng");  
	           //连接URL为 jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码  
	           
	          System.out.println("Success connect Mysql server!");  
	          String sql = "INSERT INTO author(AuthorID,Name, Age,Country)values(?,?,?,?)"; 
        	  PreparedStatement stmt1 = (PreparedStatement) connect.prepareStatement(sql);
        	  stmt1.setInt(1,Integer.valueOf(message.get(0)));
        	  stmt1.setString(2,message.get(1));
        	  stmt1.setString(3,message.get(2));
        	  stmt1.setString(4,message.get(3));
        	  int result = stmt1.executeUpdate();
        	  //System.out.println(result);
        	  PreparedStatement stmt;
        	  stmt = (PreparedStatement) connect.prepareStatement("update book set AuthorID= ? where AuthorID=666");
        	  stmt.setInt(1,Integer.valueOf(message.get(0)));
        	  stmt.executeUpdate();
        	  if(result == 0) return false;
	          else return true;
	         }catch(Exception e) {  
	          System.out.print("get data error!");  
	          e.printStackTrace();  
	         }
		
		return false;
    	
    }
}
