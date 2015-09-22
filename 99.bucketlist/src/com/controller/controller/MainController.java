package com.controller.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.UsersCommand;
import com.service.frame.Biz;
import com.service.vo.Users;

@Controller
public class MainController {
	@Resource(name="usersbiz")
	Biz biz;
	
	@RequestMapping("/main.bk")
	public String main(){
		return "main";
	}
	
	@RequestMapping("/go.bk")
	public ModelAndView go(String next){
		ModelAndView mv = new ModelAndView("main");
		mv.addObject("center",next);
		
		return mv;
	}
	
	
	@RequestMapping("/contents.bk")
	public ModelAndView contents(UsersCommand uc){
		ModelAndView mv = new ModelAndView();
		
		try {
			biz.register(new Users(uc.getUser_id(), uc.getUser_password(), uc.getUser_name(), uc.getUser_email(), uc.getUser_image().getOriginalFilename(), uc.getUser_regdate(),uc.isAdmin_check()));
			mv.addObject("joinmsg", uc.getUser_id() +"있음");
		} catch (Exception e) {
			mv.addObject("joinmsg", "없음");
			e.printStackTrace();
		}
		mv.addObject("center", "joinresult");
		//mv.addObject("main");
		return mv;
	}
	
	@RequestMapping("/login.bk")
	   public ModelAndView login(HttpServletRequest request, String user_id, String user_password){
	      
	      ModelAndView mv = new ModelAndView("main");
	      
	      Users result = null;
	      
	      try {
	         result = (Users) biz.get(user_id);
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      if(result != null && (result.getUser_password().equals(user_password))){
	         //mv.addObject("loginmsg",user_id+"님이 로그인하셨습니다.");
	         HttpSession session = request.getSession();
	         session.setAttribute("loginuser", result);
	      }
	      else{
	         //mv.addObject("loginmsg", "로그인실패");      
	      }
	      
	      //mv.addObject("center","loginresult");
	      //mv.setViewName("main");
	      
	      return mv;
	   }
	
	@RequestMapping("/logout.bk")
	public ModelAndView logout(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("main");
		HttpSession session = request.getSession();
		if(session != null){
			session.invalidate();
		}
		return mv;
	}
	
}