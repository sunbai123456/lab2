package lab2;

import java.util.ArrayList;

import io.ConnectData;

public class AddAuthor {
   private int AuthorID;
   private String Name;
   private String Age;
   private String Country;
   public String execute() throws Exception { 
		ArrayList<String> tit = new ArrayList<String>() ;
		tit.add(String.valueOf(AuthorID));
		tit.add(Name);
		tit.add(Age);
		tit.add(Country);
		boolean flag =ConnectData.addauthor(tit);
		if(flag) return "success";
		else return "error";	
	   }
   
public int getAuthorID() {
	return AuthorID;
}
public void setAuthorID(int authorID) {
	AuthorID = authorID;
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
   
}
