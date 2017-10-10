package lab2;

import java.util.ArrayList;

import io.ConnectData;

public class BookDetails {
   private String ISBN;
   private String Title;
   private String AuthorID;
   private String Publisher;
   private String PublishDate;
   private String Price;
   private String Name;
   private String Age;
   private String Country;
   private String bookname;
  
public String execute() throws Exception {
		ArrayList<String> tit;
		tit=ConnectData.searchbook(bookname);
		if(tit.isEmpty()) return "error";
		else
		{
			ISBN=tit.get(0);
			Title=tit.get(1);
			AuthorID=tit.get(2);
			Publisher=tit.get(3);
			PublishDate=tit.get(4);
			Price=tit.get(5);
			Name=tit.get(6);
			Age=tit.get(7);
			Country=tit.get(8);
		    //request.setAttribute("titles",new String[]{"book1", "book2"});
			return "success";
		}
	      
	   }
public String getISBN() {
	return ISBN;
}
public void setISBN(String iSBN) {
	ISBN = iSBN;
}
public String getTitle() {
	return Title;
}
public void setTitle(String title) {
	Title = title;
}
public String getAuthorID() {
	return AuthorID;
}
public void setAuthorID(String authorID) {
	AuthorID = authorID;
}
public String getPublisher() {
	return Publisher;
}
public void setPublisher(String publisher) {
	Publisher = publisher;
}
public String getPublishDate() {
	return PublishDate;
}
public void setPublishDate(String publishDate) {
	PublishDate = publishDate;
}
public String getPrice() {
	return Price;
}
public void setPrice(String price) {
	Price = price;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getAge() {
	return Age;
}
public void setAge(String age) {
	Age = age;
}
public String getCountry() {
	return Country;
}
public void setCountry(String country) {
	Country = country;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}   
}
