package diskssm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import diskssm.bean.User;
import diskssm.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
  @Autowired
  private UserService service;
  
  
 /**
  * 注册
  * @param user
  * @return
  */
  @RequestMapping("/register")
  public String register(User user)throws ServletException, IOException{
	  service.regist(user);
	  return "redirect:/login.jsp";
  }
  
 /**
  * 登陆
  * @param user
  * @param request
  * @return
  */
  @RequestMapping("/login")
  public String login(User user,HttpServletRequest request)throws ServletException, IOException{
	  HttpSession session=request.getSession();
	  if(service.login(user.getUsername(),user.getPassword())==1){
		  session.setAttribute("username",user.getUsername());
		  session.setAttribute("user",service.findByUsername(user.getUsername()));
		  return "File";
	  }else{
		  return "redirect:/login.jsp";
	  }
	  
  }
  
 /**
  * 注销
  * @param request
  * @return
  * @throws IOException
  */
  @RequestMapping("/logout")
  public String logout(HttpServletRequest request) throws IOException{
	  request.getSession().invalidate(); 
	  return "redirect:/login.jsp";
  }
   
  @RequestMapping("/updatePassword")
  public String updatePassword(HttpServletRequest request){
	     String username=request.getParameter("username");
	     String password=request.getParameter("password");
	     String newpwd=request.getParameter("newpassword");
	     String refirm=service.findByUsername(username).getPassword();
	     if(password.equals(refirm)){
	    	 service.updatePassword(username, newpwd);
	    	 return "redirect:/login.jsp";
	     }
		return "updatepassword";
  }
  
  @RequestMapping("/update/{name}")
  public String update(@PathVariable("name") String username,HttpServletRequest request){
	  User user=new User();
	  String newtel=request.getParameter("tel");
	  String newemail=request.getParameter("email");
	  String newmemo=request.getParameter("memo");
	  user.setUsername(username);
	  user.setEmail(newemail);
	  user.setTel(newtel);
	  user.setMemo(newmemo);
	  service.update(user);
	  return "redirect:/user/findall";
	 
  }
  
  @RequestMapping("/eddd")
  public String test(){
	  System.out.println("eddd");
	  return "editpassword";
  }
  /*
   * 查找所有
   */
  @RequestMapping("/findall")
  public String findall(Model model){
	  System.out.println("findall");
	  List<User> list=service.findAll();
	  model.addAttribute("list", list);
	  return "findall";
  }
  
  @RequestMapping("/find/{name}/{type}")
  public String find(@PathVariable("name") String username,@PathVariable("type") String type,Model model){
	  System.out.println("find");
	 User user=service.findByUsername(username);
	  model.addAttribute("user", user);
	  if("editpwd".equals(type)){
	  return "editpassword";
	  }else if("edituser".equals(type)){
		  return "edituser";
	  }
	return "findall"; 
  }
  
  @RequestMapping("/delete/{username}")
  public String delete(@PathVariable("username") String username){
	  service.deleteByName(username);
	  return "redirect:/user/findall";
	 
  }
  @RequestMapping("/back")
  public String goback(){
	  return "File";
  }
}
