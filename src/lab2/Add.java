package lab2;

import java.util.ArrayList;

import org.apache.struts2.ServletActionContext;

import io.ConnectData;

public class Add {
	   private String ISBN;
	   private String Title;
	   private String AuthorID;
	   private String Publisher;
	   private String PublishDate;
	   private String Price;
	   private String update;
	   
	   public String execute() throws Exception { 
			ArrayList<String> tit = new ArrayList<String>() ;
			tit.add(ISBN);
			tit.add(Title);
			tit.add(AuthorID);
			tit.add(Publisher);
			tit.add(PublishDate);
			tit.add(Price);
			tit.add(update);
			
			boolean flag =ConnectData.addbook(tit);
			if(flag) return "success";
			else {
				ServletActionContext.getRequest().setAttribute("authorid", AuthorID);
				return "fail";
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

	public String getUpdate() {
		return update;
	}

	public void setUpdate(String update) {
		this.update = update;
	}
	
}