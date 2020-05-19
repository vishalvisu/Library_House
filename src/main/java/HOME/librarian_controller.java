package HOME;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;
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

import DTO.book_Details;
import DTO.member_Details;

@Controller
public class librarian_controller {
	
	@RequestMapping("/add_member")
	public String add_member(member_Details mDetails,Model m) throws IOException
	{
		 System.out.println( "Project Started.....!" );
		 
		    Configuration cfg= new  Configuration();
	          cfg.configure("hybernet.cfg.xml"); 
	        
	    	String name = mDetails.getName();
			String id= mDetails.getId();
			String dept=mDetails.getDepartment();
			String stream = mDetails.getStream();
			String start_year=mDetails.getStart_year();
		    String end_year = mDetails.getEnd_year();
			
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         org.hibernate.Transaction tx=  session.beginTransaction();
	         
	      POJO_CLASSES.avl_members members = new POJO_CLASSES.avl_members(id,name,dept,stream,start_year+"-"+end_year);
	                 session.save(members);
	        
	         tx.commit();
	         session.close();

		
		String response="MEMBER ADDED";
		String link="add_member.jsp";
		String nextstep="ADD-MORE";
	
		m.addAttribute("response",response);
		m.addAttribute("nextstep",nextstep);
		
		m.addAttribute("back",link);
		m.addAttribute("result",1);
		
		
		return "response";
	}
	
	@RequestMapping("/add_book")
	public String add_member(book_Details bDetails,Model m) throws IOException
	{
		 System.out.println( "Project Started.....!" );
		 
		    Configuration cfg= new  Configuration();
	          cfg.configure("hybernet.cfg.xml"); 
	      
			
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         org.hibernate.Transaction tx=  session.beginTransaction();

POJO_CLASSES.avl_books members = new POJO_CLASSES.avl_books(bDetails.getId(),bDetails.getTitle(),bDetails.getAuthors(),bDetails.getISBN_CODE(),bDetails.getSubject(),true);
	                 session.save(members);
	        
	         tx.commit();
	         session.close();
		
		String response="BOOK ADDED";
		String link="add_book.jsp";
		String nextstep="ADD-MORE";
	
		m.addAttribute("response",response);
		m.addAttribute("nextstep",nextstep);
		
		m.addAttribute("back",link);
		m.addAttribute("result",1);
		
		return "response";
	}
	
	
	@RequestMapping("/librarian")
	public String librarian (HttpServletRequest request)
	{
		if(request.getParameter("clicked").equals("issue-book"))
			return "issue";
		else if(request.getParameter("clicked").equals("deposit-book"))
			return "book_deposit";
		else if(request.getParameter("clicked").equals("add-book"))
			return "add_book";
		else if(request.getParameter("clicked").equals("delete-book"))
			return "delete_book";
		else if(request.getParameter("clicked").equals("add-member"))
			return "add_member";
		else 
			return "delete_member";
	}
	
	@RequestMapping("/deposit_book")
	public String deposit_book (HttpServletRequest request,Model m,HttpServletResponse response) throws IOException
	{
		String book_id = request.getParameter("book_id");
		String book_title = request.getParameter("book_title");
		String member_id = request.getParameter("member_id");
		
		// PrintWriter out= response.getWriter();
		  // out.println( "Project Started.....!" );
		   
	        Configuration cfg= new  Configuration();
	         cfg.configure("hybernet.cfg.xml"); 
	        
	         SessionFactory factory= cfg.buildSessionFactory();
	         
	         Session session=factory.openSession();
	         
	       // org.hibernate.Transaction tx=   session.beginTransaction();
     	  
     	  @SuppressWarnings("unchecked")
	Query<POJO_CLASSES.issued_books> query = session.createQuery("from issued_books where book_id=:c and member_id=:d");
	         
	         query.setParameter("c",book_id);
	         query.setParameter("d",member_id);
	         
	         List<POJO_CLASSES.issued_books> list=query.list();
	         
	         int n=0;
	         
	         String link="book_deposit.jsp";
	         m.addAttribute("back",link);
	         
	         if(list.size()==0)
	         {
	        	 System.out.println("Invalidate_Data");
	        	   String rslt="INVALID DATA TRY AGAIN";
	   	 		
	   	 		
	        	   session.close();
	        	   
	   	 		m.addAttribute("result",0);
	   	 		m.addAttribute("response",rslt);
	   	 	      return "response";	
	         }
	         else 
	         {
	        	 int ttl=0; String Title=null;
	        	 for(POJO_CLASSES.issued_books iBooks:list)
	        	 {
	        		 if((iBooks.getBook_title().toLowerCase().trim().equals(book_title.toLowerCase().trim())))
	        			 ttl=1;
	        		 
	        			 Title=iBooks.getBook_title();	 
	        	 }
	        	 if(ttl==0)
	        	 {
	        		 m.addAttribute("result",0);
	 	   	 		
	 	   	 		m.addAttribute("response","Enter Correct Title "+Title);
	 	   	 		
	 	   	 		session.close();
	 	   	 		return "response";
	        	 }
	        	 
	        	 for(POJO_CLASSES.issued_books books:list)
	        		 {
	        		 Period intervalPeriod = Period.between(LocalDate.now(),books.getDate());
	        		   int days=intervalPeriod.getDays();
	        		  float  FINE = (float) ((float)(days-15)*0.5);
	        	    	if(FINE<0)
	        			FINE=0;
	        		    System.out.println("FINE: " + FINE);
	        		    
	        		    m.addAttribute("response","Book-Deposited Youe Late Fine Is-"+FINE);
	        		 }
	        	 
	        	 org.hibernate.Transaction tx=  session.beginTransaction();
                 
	        	 @SuppressWarnings("unchecked")
       Query<POJO_CLASSES.avl_books> query2= session.createQuery("update avl_books set is_avl=:c where id=:d"); 
                 query2.setParameter("c",true);
                 query2.setParameter("d",book_id);
		         
                 query2.executeUpdate();
		        
		         @SuppressWarnings("unchecked")
Query<POJO_CLASSES.issued_books> queri = session.createQuery("delete from issued_books where book_title=:c and member_id=:d");
		         	         
		                      queri.setParameter("c",book_title);
		         	         queri.setParameter("d",member_id);
		         	         int d = queri.executeUpdate();
		         	        
		         	         System.out.println( "DONE---DELETE .....--!"+d);
		       
		         tx.commit();
			 		
		            m.addAttribute("result",1);
			 		m.addAttribute("nextstep","Deposit More Books");
		
		         
	         }     
	         
	         System.out.println( "DONE.....--!"+n);
	         
	         session.close();
	 		
	 		return "response";
	
	}
	
}
