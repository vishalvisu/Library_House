package HOME;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller 
{
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request)
	{
		if(request.getParameter("clicked").equals("member"))
		return "member";
		return "login";
	}
	
	@RequestMapping("/login")
	public String members(HttpServletRequest request)
	{
		String password = request.getParameter("password");
		
		return "librarian";
	}

	
	@RequestMapping("/issue_book")	
	public String Issue(HttpServletRequest request,HttpServletResponse response,Model m) throws IOException 
	{

		  //PrintWriter out= response.getWriter();
		  // out.println( "Project Started.....!" );
	       
		   String book_id = request.getParameter("book_id");
		   String member_id = request.getParameter("member_id");
		   String title = request.getParameter("book_title");
		   
	        Configuration cfg= new  Configuration();
	         cfg.configure("hybernet.cfg.xml"); 
	         
	        System.out.println(book_id+"  "+member_id+" "+title);
	        
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         org.hibernate.Transaction tx=  session.beginTransaction();
	         
	         @SuppressWarnings("unchecked")
			Query<POJO_CLASSES.avl_books> query = session.createQuery("from avl_books where id=:d");
			query.setParameter("d",book_id);
			
			 List<POJO_CLASSES.avl_books> aBooks = query.list();
	        
			@SuppressWarnings("unchecked")
			Query<POJO_CLASSES.avl_members> query2 = session.createQuery("from avl_members where id=:e");
			query2.setParameter("e",member_id);
			
	        List<POJO_CLASSES.avl_members> iMembers = query2.list();
	      
	        
	        int avl=0,ttl=0;
	        
	        for(POJO_CLASSES.avl_books item: aBooks)
	        {
	        	if((item.getTitle().toLowerCase().trim()).equals(title.toLowerCase().trim()))
	        		ttl=1;
	        	if(item.getIs_avl())
	        		avl=1;
	        }
	        
	         m.addAttribute("back","issue.jsp");
	         
	         if(iMembers.size()==0||aBooks.size()==0)
	         {
	        	 m.addAttribute("result",0);
	        	 
	        	 if(iMembers.size()>0)
	               m.addAttribute("response","Invalid Book Id");  			
	        	 else if(aBooks.size()>0)
	        	   m.addAttribute("response","Invalid Member Id");	 
	        	 else
	        		 m.addAttribute("response","Both Book and Member Id is Invalid");
	        	 
	        	 session.close();
	        	 return "response";
	         }
	         else 
	         {
	            if(avl==0||ttl==0)
	            {
	            	m.addAttribute("result",0);
	            	if(avl>0)
	            		m.addAttribute("response","Enter correct title");
	            	else 
	            		m.addAttribute("response","Sorry Book Is Not Available");
	            	
	            	session.close();
	            	return "response";
	            }
	        	 
	        	 m.addAttribute("result",1);
	        	 
	        	 @SuppressWarnings("unused")
				 POJO_CLASSES.issued_books iBooks = new POJO_CLASSES.issued_books(book_id,title,member_id,LocalDate.now());
	        //	 out.println("Available..................");
	        	 
	        	 session.save(iBooks);
	        	
	        	 tx.commit();
	        	 
	        	 tx=  session.beginTransaction();
	        	  
	        	 @SuppressWarnings("unchecked")
	Query<POJO_CLASSES.avl_books> query1 = session.createQuery("update avl_books set is_avl=:c where id=:d");
	 	         
	 	         query1.setParameter("c",false);
	 	        query1.setParameter("d",book_id);
	 	        
	 	         int n = query1.executeUpdate();
	 	        
	 	         System.out.println( "UPDATED.....--!"+n);
	 	         tx.commit();
	         }
	         
	         session.close();
	 		
	 		m.addAttribute("response","DONE");
	 		m.addAttribute("nextstep","WANT-MORE");
	 		
	         return "response";
	         
	}
	
	
	@RequestMapping("/delete_book")
	public String delete_book(HttpServletRequest request,Model m)
	{	
		
		 System.out.println( "delete book Project Started.....!" );
	       
			String id= request.getParameter("id");
			
		   
	         Configuration cfg= new  Configuration();
	         cfg.configure("hybernet.cfg.xml"); 
	        
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         org.hibernate.Transaction tx=  session.beginTransaction();
	         
	         @SuppressWarnings("unchecked")
Query<POJO_CLASSES.avl_books> query = session.createQuery("delete from avl_books where id=:d");
	         
             query.setParameter("d",id);
	
	         int n = query.executeUpdate();
	        
	         System.out.println( "DONE.....--!"+n);
	         tx.commit();
	         session.close();
		    
	         String link="delete_book.jsp"; 
	         
	         m.addAttribute("back",link);
	         m.addAttribute("result",n);
	         
	         if(n==0)
	         {
	        	 m.addAttribute("response","INVALID ID");
	        	 return "response";
	         }
	        
	 		
	 		String response="BOOK DELETED";
			String nextstep="DELTE-MORE-BOOKS";
		
			m.addAttribute("response",response);
			m.addAttribute("nextstep",nextstep);
	 		
	 		m.addAttribute("link",link);
		
		return "response";
		
	}
	
	@RequestMapping("/delete_member")
	public String delete_member(HttpServletRequest request,Model m)
	{
		System.out.println( "delete member Project Started.....!" );
	       
			String id= request.getParameter("id");
				   
	        Configuration cfg= new  Configuration();
	         cfg.configure("hybernet.cfg.xml"); 
	        
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         org.hibernate.Transaction tx=  session.beginTransaction();
	         
	         @SuppressWarnings("unchecked")
	         Query<POJO_CLASSES.avl_members> query = session.createQuery("delete from avl_members where id=:d");
	         	         
	                      query.setParameter("d",id);
	         	        
	         	         int n = query.executeUpdate();
	         	        
	         	         System.out.println( "DONE.....--!"+n);
	         	         tx.commit();
	         	         session.close();
	         		    
	         	        String link="delete_member.jsp";
	         	         
	         	        m.addAttribute("back",link);
	       	         m.addAttribute("result",n);
	       	         
	       	         if(n==0)
	       	         {
	       	        	 m.addAttribute("response","INVALID ID");
	       	        	 return "response";
	       	         }
	       	        
	       	 		
	       	 		String response="ACCOUNT DELETED";
	       			String nextstep="DELTE-MORE-ACCOUNT";
	       		
	       			m.addAttribute("response",response);
	       			m.addAttribute("nextstep",nextstep);
	       	 		
	       	 		m.addAttribute("link",link);
		
		return "response";
	}
	
}
