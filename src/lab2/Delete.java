package lab2;

import io.ConnectData;

public class Delete {
 private String bookname;
 private String authorname;
 public String getAuthorname() {
	return authorname;
}

public void setAuthorname(String authorname) {
	this.authorname = authorname;
}

public String execute() throws Exception {
		boolean flag;
		flag=ConnectData.deletebook(bookname);
		if(!flag) return "error";
		else
		{
			return "success";
		}
	      
	   }

public String getBookname() {
	return bookname;
}

public void setBookname(String bookname) {
	this.bookname = bookname;
}
 
}
