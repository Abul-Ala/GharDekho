package com.roomdekho.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.SplittableRandom;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HomeController {
	
	@Autowired 
	
	JdbcTemplate jdbcTamplate;
	
	@PostMapping("/signup")
	
	public String signup(HttpServletRequest req) throws SQLException
	{
		System.out.print("signup mathod invoked");
		
		String name= req.getParameter("name");
		String email= req.getParameter("email");
		String number= req.getParameter("number");
		String password= req.getParameter("password");
		
		Connection con= jdbcTamplate.getDataSource().getConnection();
		Statement	stm=con.createStatement();
		String query="select * from signup where email='"+email+"'";
		ResultSet rs= stm.executeQuery(query); 
		
		if(rs.next())
		{
		
			req.setAttribute("allReadyLogin", "you are all ready login");
			return "sign-up";
		}
		else
		{
		String otp= "";
		otp = generateOtp(6);
		System.out.println("your otp is " + otp);
		  String query2 = "insert into signup(name,email,number,password,otp) values(?,?,?,?,?)";
	  	  PreparedStatement stmt1 = con.prepareStatement(query2);
	  	  stmt1.setString(1,name);
	  	  stmt1.setString(2, email);
	  	  stmt1.setString(3, number);
	  	  stmt1.setString(4, password);
	  	  stmt1.setString(5, otp);
	 
	  	  int row = stmt1.executeUpdate();
	  	  
	  	if (row >=1) {
	  		 sendMail(email, "otp is  "+otp, "otp for varification");
	  		 
	  		req.setAttribute("email", email);
	  	  }
		}
			
		
		return"signupsuccess";
		
		
	}
	
	public void sendMail(String emailTo, String body, String subject) {
		// TODO Auto-generated method stub
		Properties p= new Properties();
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.ssl.enable", "true");
		p.put("mail.smtp.auth", "true");
		
		MailAuthenticator m= new MailAuthenticator("khanalisaif761@gmail.com", "************");
		
		Session session= Session.getInstance(p, m);
		session.setDebug(true);
		
		MimeMessage msg= new MimeMessage(session);
		
		try {
			msg.setFrom("khanalisaif761@gmail.com");
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
			msg.setSubject(subject);
			msg.setText(body);
			 Transport.send(msg);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public String generateOtp(int size) {
		StringBuilder sb = new StringBuilder();
  		SplittableRandom sp = new SplittableRandom();
  		 for (int i =0 ; i<size; i++) {
  			 int rn = sp.nextInt(0,9);
  			 sb.append(rn);
  		 }
  		return sb.toString();
	}
	
	

	@PostMapping("/login")
	public String login(HttpServletRequest req) throws SQLException
	{
		System.out.print("logim method invoked");
		String email= req.getParameter("email");
		String password= req.getParameter("password");
		
		Connection con=jdbcTamplate.getDataSource().getConnection();
		Statement stm=con.createStatement();
		String query="select * from signup where email='"+email+"'";
		ResultSet rs= stm.executeQuery(query); 
		
		if(rs.next())
		{
			 if(rs.getInt("is_varify") == 0) {
		 		  req.setAttribute("text", "You are not verified");
		 			return "login";
			 }
			
		   if(rs.getString("password").equals(password))
		   {
			   req.setAttribute("userData", rs.getString("name"));
			return "afterLogin";
		   }
		}
		req.setAttribute("test", "wrong email or password");
		return"login";
	}
	
      @PostMapping("/forgetPassword")
	
	  public String forgetPasswod(HttpServletRequest req) throws ClassNotFoundException, SQLException
	  {
    	   System.out.println("forgetfassword invoked");
		   String email=req.getParameter("email");
		   String password=req.getParameter("password");
		   String newpassword=req.getParameter("newpassword");
		
		   System.out.println(password);
	       System.out.println(email);
	       Connection con=jdbcTamplate.getDataSource().getConnection();	
	       Statement smt =con.createStatement();
		   String query="select * from signup where email='"+email+"'";
	       ResultSet rs= smt.executeQuery(query);
	       
	      
	       
	    if(rs.next())
	    {
	    	if(rs.getString("email").equals(email) && rs.getString("password").equals(password))
	    	{
	    		Connection con1=jdbcTamplate.getDataSource().getConnection();	
	    		Statement	stm1=con1.createStatement();
	    	    String query1="update signup set password='"+newpassword+"' where email='"+email+"'";
	    	     stm1.executeUpdate(query1);
	    	     req.setAttribute("text", "your password is changed successfully ");
	    	}
	    	else
	    		req.setAttribute("text", " wrong passwored or email ");
	    		
	    	
	    }
	    else
	    	req.setAttribute("text", "youre not signup ");
	    	
	   
		
		return"login";
	}
      
      
      
      @PostMapping("/otpVerification")
  	
  	public String otpVerification(HttpServletRequest req)throws SQLException,ClassNotFoundException
  	{
  	
  		String otp =req.getParameter("otp");
  		String email=req.getParameter("email");
  		
  		
  		Connection con=jdbcTamplate.getDataSource().getConnection();	
  		Statement	stm=con.createStatement();
  		String query="select * from signup where email='"+email+"'";
  	    ResultSet rs= stm.executeQuery(query);
  	    
  	    if(rs.next())
  	    {
  	        if(rs.getString("otp").equals(otp))
  	        {
  	        	Statement	stm1=con.createStatement();
  	    	    String query1="update signup set is_varify=1 where email='"+email+"'";
  	    	    stm1.executeUpdate(query1);
  	    	    req.setAttribute("userData", rs.getString("name"));
  	    	    return"afterLogin";
  	    	     
  	         }
  	        else
  	    	   req.setAttribute("text", "your passwor is not valid");
  	    }
  		
  		
  		return "signupsuccess";
  	}
      @PostMapping("/postProperties")
      public String postProperties(HttpServletRequest req,  UserFile userFile) throws SQLException
      {
    	String name= req.getParameter("name");
    	String email=  req.getParameter("email");
    	String number=  req.getParameter("number");
    	
    	String PropertyType=  req.getParameter("PropType");
    	String NoOfRooms=  req.getParameter("Rooms");
    	String NoOfBathrooms=  req.getParameter("BathRooms");
    	String OtherRooms=  req.getParameter("ExtraRoom");
    	String FurnishingCondition=  req.getParameter("FurnishingCondition");
    	String avalability=  req.getParameter("Avalability");
    	String WillingToRent=  req.getParameter("WillingToRent");  
    	String City=  req.getParameter("City");
    	String Appartment=  req.getParameter("Appartment");
    	String HouseNo=  req.getParameter("HouseNo");
    	String rent=  req.getParameter("rent");
    	
    	System.out.println(HouseNo);
    	System.out.println(email);
    	
    	

  	  List<String> filePath=uploadFileOnServer(userFile);
  	  for(String x:filePath)
  		  System.out.println(x);
  	     	    
  	         String img="";
    	       for(String image: filePath){
    	         img = image.substring(29);
    	       }
    	
    
    	
    	
    	Connection con=jdbcTamplate.getDataSource().getConnection();	
    	String query2 = "insert into userInfo(PropertyType,NoOfRooms,NoOfBathrooms,OtherRooms,FurnishingCondition,avalability,WillingToRent,city,Appartment,HouseNo,rent,name,email,number,image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement stmt1 = con.prepareStatement(query2);
	  	
	    stmt1.setString(1,PropertyType);
	    stmt1.setString(2,NoOfRooms);
	    stmt1.setString(3,NoOfBathrooms);
	    stmt1.setString(4,OtherRooms);
	    stmt1.setString(5,FurnishingCondition);
	    stmt1.setString(6,avalability);
	    stmt1.setString(7,WillingToRent);
	    stmt1.setString(8,City);
	    stmt1.setString(9,Appartment);
	    stmt1.setString(10,HouseNo);
	    stmt1.setString(11, rent);
	    stmt1.setString(12,name );
	    stmt1.setString(13, email);
	    stmt1.setString(14, number);
	    stmt1.setString(15, img);
        stmt1.executeUpdate();
       

    	req.setAttribute("userData", name);
    	return"afterLogin";
      }
    

	private List<String> uploadFileOnServer(UserFile userfile ) {
  		// it upload file on server and return the path of the uploaded file
  		// it takes file from UserFile class
  		
  		String rootdirectory ="F://Java//RoomDekho//WebContent//uploded_image_on_server";  //we can also append userid in the path
  		//String rootdirectory="RoomDekho//WebContent//uploded_image_on_server";
  		File directory = new File(rootdirectory);
  		
  		if(!directory.exists()) {
  			directory.mkdirs();
  		}
  		MultipartFile[] multipartfile  = userfile.getMultipartfile();
  		
  		System.out.println("No of files uploaded are : " + multipartfile.length);
  		
  		List<String> filepaths = new ArrayList<>();

  		//
  		//loop
  		
  		for(MultipartFile filedata  : multipartfile) {
  			
  			String userfilename = filedata.getOriginalFilename();
  			if(userfilename!=null && userfilename.length()>0) {
  				String filepath = null ;
  				try {
  					filepath =directory.getCanonicalPath()+"\\"+ userfilename ;   //  */ directory.getCanonicalPath()+\"\\\"+userfilename ;
  					filepath=filepath.replace('\\' , '/');
  					BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(filepath)); 
  					bos.write(filedata.getBytes());
  					bos.close();
  				} catch (IOException e) {
  					e.printStackTrace();
  				}
  				filepaths.add(filepath);
  			}
  			
  			
  		}
  		
  		return filepaths;
  	}
   @GetMapping("/showProperties")
    public String showProperties(HttpServletRequest req) throws SQLException{
    	
	 String city= req.getParameter("city");
	   
    	System.out.println(city);
    	 
   	       Connection con=jdbcTamplate.getDataSource().getConnection();	
	       Statement smt =con.createStatement();
		   String query="select * from  userinfo where city='"+city+"' ";
	       ResultSet rs= smt.executeQuery(query);
	  
	   
		    ArrayList<Map<String, String>> l = new ArrayList<Map<String,String>>(); 
		  
		    while(rs.next())
		   {
			   Map<String ,String> m=new HashMap<String ,String>();
			   m.put(("image"), rs.getString("image"));
			   m.put(("rent"), rs.getString("rent"));
			   m.put("Appartment", rs.getString("Appartment"));
			   m.put("WillingToRent", rs.getString("WillingToRent"));
			   m.put("number", rs.getString("number"));
			   m.put("HouseNo", rs.getString("HouseNo"));
			   m.put("NoOfRooms", rs.getString("NoOfRooms"));
		   
			   l.add(m);
		   }
		  
		    
		    req.setAttribute("userInfo", l);
		    req.setAttribute("city", city);
	       
    	
    	return "City1";
    }
	
}
