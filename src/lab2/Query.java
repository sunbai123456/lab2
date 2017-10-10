package lab2;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import io.ConnectData;
public class Query 
{
    private String authorname;
    private ArrayList<String> titles;

	HttpServletRequest request = ServletActionContext.getRequest();
    
	public String execute() throws Exception {
		if(authorname == null) authorname="";
		ArrayList<String> tit;
		tit=ConnectData.searchname(authorname);
		//System.out.println("authorname:" + authorname);
		//System.out.println("Query.execute():" + tit.get(0));
		if(tit.isEmpty()) return "error";
		else
		{
			titles = tit;
		    //request.setAttribute("titles",new String[]{"book1", "book2"});
			return "success";
		}
	      
	   }
    public ArrayList<String> getTitles() {
		return titles;
	}

	public void setTitles(ArrayList<String> titles) {
		this.titles = titles;
	}

    public String getAuthorname() {
		return authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
    
}
