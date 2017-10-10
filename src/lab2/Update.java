package lab2;

import java.util.ArrayList;

import io.ConnectData;

public class Update {
   private String ISBN;
   private String Title;
   private String Publisher;
   private String PublishDate;
   private String Price;
   private String bookname;
   private String AuthorID;
public String execute() throws Exception {
		ArrayList<String> tit;
		tit=ConnectData.updatebook(bookname);
		if(tit.isEmpty()) return "error";
		else
		{
			ISBN=tit.get(0);
			Title=tit.get(1);
			Publisher=tit.get(2);
			PublishDate=tit.get(3);
			Price=tit.get(4);
			AuthorID=tit.get(5);
		    //request.setAttribute("titles",new String[]{"book1", "book2"});
			return "success";
		} 
	   }

public String getAuthorID() {
	return AuthorID;
}

public void setAuthorID(String authorID) {
	AuthorID = authorID;
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
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}   
}
