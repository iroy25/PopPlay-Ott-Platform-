package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Movie;
import com.example.demo.model.User;
import com.example.demo.service.MovieRepo;

import com.example.demo.helper.FileUploadHelper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import com.example.demo.helper.FileUploadHelper;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Optional;


@Controller
public class UserController {
	@Autowired
	private FileUploadHelper fileUploadHelper;

	@Autowired
	UserRepo userrepo;
	@Autowired
	MovieRepo mrepo;
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	@RequestMapping("index2")
	public String index2() {
		return "index2";
	}
	@RequestMapping("signup")
	public String signup()
	{
		return "signup";
	}
	
	@RequestMapping("login")
	public String login()
	{
		return "login";
	}

	
	@RequestMapping("movielistafter")
	public String movielistafter()
	{
		return "movielistafter";
	}
	@RequestMapping("movie1")
	public String movie1() {
		return "movie1";
	}
	
	
	@RequestMapping("regprocess")
	public String register(@RequestParam("uname") String name,
							@RequestParam("uemail") String email,
							@RequestParam("upass") String password,
							@RequestParam("uphno") String phno,
							@RequestParam("uans") String answer,
							HttpSession session, 
							ModelMap model) 
	{
		if (name.trim().length() < 3 || !name.matches("^[a-zA-Z ]+$")) {
	        model.put("msg", "Name must be at least 3 letters, no numbers!");
	        return "signup";
	    }

	    if (!email.matches("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$")) {
	        model.put("msg", "Enter a valid email address!");
	        return "signup";
	    }

	    if (!phno.matches("^\\d{10}$")) {
	        model.put("msg", "Phone must be exactly 10 digits!");
	        return "signup";
	    }

	    if (password.length() < 8 || !password.matches(".*[A-Z].*") || !password.matches(".*\\d.*")) {
	        model.put("msg", "Password: min 8 chars, 1 uppercase, 1 number!");
	        return "signup";
	    }

	    if (answer.trim().length() < 2) {
	        model.put("msg", "Please enter your security answer!");
	        return "signup";
	    }

	    
	    User existing = userrepo.findByEmail(email);
	    if (existing != null) {
	        model.put("msg", "Email already registered!");
	        return "signup";
	    }
	    
		User u =new User();
		u.setName(name);
		u.setEmail(email);
		u.setPhno(phno);
		u.setPassword(password);
		u.setAnswer(answer);
		userrepo.save(u);
		
		session.setAttribute("name", name);
	    session.setAttribute("data", email);
		return "index2";
	}
	
	@RequestMapping("loginproc")
	public String loginProc(@RequestParam("uemail")String email,
							@RequestParam("upass")String pass,
							ModelMap model,
							HttpSession session)
	{
		User u=null;
		try {
			u=userrepo.findByEmail(email);
		}catch(Exception e) {}
		if(u!=null)
		{
			session.setAttribute("data", email);
			session.setAttribute("name", u.getName());
			return "index2";
		}
		else 
		{
			model.put("msg", "email or password error!");
			return "login";
		}
		
		
	}
	
	@RequestMapping("destroy")
	public String destroySession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "index";
	}
	
	@RequestMapping("admlogin")
	public String adminlogin()
	{
		return "adminlogin";
	}
	@RequestMapping("admloginproc")
	public String admLoginProc(@RequestParam("uemail")String email,
								@RequestParam("upass")String pass,
								ModelMap model)
	{
		if(email.equals("admin@gmail.com")&& pass.equals("admin"))
		{
			return "admin_dashboard";
		}
		else 
		{
			model.put("msg", "email or password error!");
			return "adminlogin";
		}
	}
	
	@RequestMapping("admdash")
	public String adminDashboard()
	{
		return "admin_dashboard";
	}
	@RequestMapping("addproduct")
	public String addProduct()
	{
		return "add_product";
	}
	
	
	@RequestMapping("prod")
	public String movie(@RequestParam("movieid")String pid,
						@RequestParam("moviename")String pname,
						@RequestParam("genre")String genre,
						@RequestParam("video") MultipartFile file,
						ModelMap model)
	{
		 try {
		    	
		    	boolean f=fileUploadHelper.uploadFile(file);
		    	
		    	String movname=file.getOriginalFilename();
		    	Movie p=new Movie();
				p.setMovieId(pid);
				p.setMovieName(pname);
			    p.setGenre(genre);
			    p.setVideo(movname);
				
			    mrepo.save(p);
		    	System.out.println(movname);model.put("msg", "Movie uploaded successfully!");
		        model.put("msgType", "success");
		    }catch(Exception e) {
		    	model.put("msg", "Upload failed: " + e.getMessage());
		        model.put("msgType", "error");
		    }
			return "add_product";
		}
	
	
	@RequestMapping("viewproduct")
	public String viewProduct()
	{
		return "view_product";
	}
	 @RequestMapping("deleteproduct")
	    public String deleteProduct() {
	        return "delete_product";  
	    
	}
	 
	 @RequestMapping("/updatemovie")
	 public String updateMovieForm() {
	     return "updatemovie";
	 }
	 
	 @PostMapping("/upmoviedata")
	    public String updateMovieData(
	            @RequestParam("movieid") String movieId,
	            @RequestParam("moviename") String movieName,
	            @RequestParam("genre") String genre,
	            @RequestParam("video") MultipartFile video) {

	        Connection con = null;
	        PreparedStatement pstm = null;

	        try {

	            Class.forName("com.mysql.cj.jdbc.Driver");

	            con = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/popplay",
	                    "root",
	                    "888888"
	            );

	            String query =
	                    "UPDATE movie SET genre=?, movie_name=? WHERE movie_id=?";

	            pstm = con.prepareStatement(query);

	            pstm.setString(1, genre);
	            pstm.setString(2, movieName);
	            pstm.setString(3, movieId);

	            int rows = pstm.executeUpdate();

	            System.out.println("Rows Updated : " + rows);

	            
	            if(!video.isEmpty()) {

	                boolean f = fileUploadHelper.uploadFile(video);

	                System.out.println("File Uploaded : " + f);
	            }

	        }
	        catch(Exception e) {

	            e.printStackTrace();
	        }
	        finally {

	            try {

	                if(pstm != null)
	                    pstm.close();

	                if(con != null)
	                    con.close();

	            }
	            catch(Exception e) {

	                e.printStackTrace();
	            }
	        }

	        return "redirect:/viewproduct";
	    }
	 @GetMapping("/update_user")
	 public String updateUserPage(@RequestParam("id") Integer id, Model m) {

	     Optional<User> user = userrepo.findById(id);

	     m.addAttribute("user", user.orElse(null));

	     return "updateuser";
	 }
	 
	 @PostMapping("/update_userdata")
	 public String updateUserData(@ModelAttribute User u) {

	     Optional<User> existing = userrepo.findById(u.getId());

	     if (existing.isPresent()) {
	         User old = existing.get();

	         old.setName(u.getName());
	         old.setEmail(u.getEmail());
	         old.setPassword(u.getPassword());
	         old.setAnswer(u.getAnswer());
	         old.setPhno(u.getPhno());

	         userrepo.save(old); 
	         }

	     return "redirect:/view_user";
	 }
	 
		 @RequestMapping("/view_user")
		 public String viewUser() {
		     return "viewuser";
		 }
		 @GetMapping("/delete_user")
		 public String deleteUser(@RequestParam Integer id) {
		     userrepo.deleteById(id);
		     return "redirect:/view_user";
		 }
	
	
}
