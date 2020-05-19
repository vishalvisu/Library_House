package HOME;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import POJO_CLASSES.avl_books;

@Controller
public class member_controller 
{	
	
	@SuppressWarnings("null")
	@RequestMapping("/member")	
	public ModelAndView member(HttpServletRequest request,Model m,ModelMap mp)
	{
		Configuration cfg= new  Configuration();
	     cfg.configure("hybernet.cfg.xml"); 
	     
	     SessionFactory factory= cfg.buildSessionFactory();
		 Session session=factory.openSession();
	    
		if(request.getParameter("clicked").equals("member-detail"))
			{			
                  @SuppressWarnings("unchecked")
           Query<POJO_CLASSES.avl_members> query = session.createQuery("from avl_members where id=:c");			
	               query.setParameter("c",request.getParameter("id"));
                  List<POJO_CLASSES.avl_members> list = query.list();
                  m.addAttribute("id",request.getParameter("id"));
              
                  int avl=0;
			  for(POJO_CLASSES.avl_members avl_members: list)
			  {		 
				  avl=1;
			   m.addAttribute("name",avl_members.getName());
			   m.addAttribute("dept",avl_members.getDept());
			   m.addAttribute("stream",avl_members.getBranch());
			   m.addAttribute("session",avl_members.getSession());
			  }
		       
			  m.addAttribute("avl",avl);
		       
      @SuppressWarnings("unchecked")
      Query<POJO_CLASSES.issued_books> query1 = session.createQuery("from issued_books where member_id=:c");
      
      query1.setParameter("c",request.getParameter("id"));
      List<POJO_CLASSES.issued_books> list1 = query1.list();
      m.addAttribute("books_taken",list1.size());
     
      String link1= "index.jsp";
	  String link2= "member.jsp";
	  
	  int k=0,cnt=list1.size();
	
	  
ModelAndView mView = new ModelAndView("member-details");	 
	  
	  mView.addObject("link1",link1);
	  mView.addObject("link2",link2);
	  mView.addObject("cnt",cnt);
	  mView.addObject("list",list1);
	  System.out.print(cnt);
      session.close();
	  return mView;
     } 
		else if(request.getParameter("clicked").equals("home"))
		{
			ModelAndView mAndView = new ModelAndView("index");
			return mAndView;
		}
		else
		{
		ModelAndView modelAndView = new ModelAndView("book-details");
		
		@SuppressWarnings("unchecked")
		Query<POJO_CLASSES.avl_books> aQuery= session.createQuery("from avl_books");
		
		List<POJO_CLASSES.avl_books> list3=  aQuery.list();
		
		String search_type = request.getParameter("search_type").toLowerCase();
		
		String  search_key = request.getParameter("search_key").toLowerCase().trim();
		
		System.out.print("search_key "+search_key);
		
		int cnt=0; String search=null;
	
		List<POJO_CLASSES.avl_books> ans = new ArrayList<POJO_CLASSES.avl_books>(list3.size());
		
		for(POJO_CLASSES.avl_books item: list3)
		{
			if(search_type.equals("subject")){
				search = item.getSubject().toLowerCase().trim();
			}
		  else 	if(search_type.equals("title"))
			 search = item.getTitle().toLowerCase().trim();
			else {
				search= item.getAuthor().toLowerCase().trim();
			}
			
			if(!search_type.equals("subject"))
			{
				int index1 = search.indexOf(search_key);
				if(index1>=0)
				   ans.add(item);
			}
			else 
			{
			     if(search.equals(search_key))
				   ans.add(item);
		    }
		}
		modelAndView.addObject("search_key",search_key);
		modelAndView.addObject("search_type", search_type);
		modelAndView.addObject("list",ans);
		modelAndView.addObject("cnt",ans.size());
		session.close();
		System.out.print(cnt);
		return modelAndView;
		}
	}
}