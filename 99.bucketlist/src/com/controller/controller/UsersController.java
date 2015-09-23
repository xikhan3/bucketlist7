package com.controller.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.UpdateUsersCommand;
import com.controller.command.UsersCommand;
import com.controller.util.MyUtil;
import com.service.frame.Biz;
import com.service.vo.Users;


@Controller
public class UsersController {
	@Resource(name="usersbiz")
	Biz biz;
	   @RequestMapping("/usersregister.bk")
	   public ModelAndView register(UsersCommand uc) throws Exception{
	      ModelAndView mv = new ModelAndView("main");
	      Users u = new Users(uc.getUser_id(), uc.getUser_password(), uc.getUser_name(), uc.getUser_email(), uc.getUser_image().getOriginalFilename(), new Date(), true);
	      System.out.println(u);
	      try {
	         biz.register(u);
	         System.out.println("성공");
	      } catch (Exception e) {
	         System.out.println("실패");
	         e.printStackTrace();
	      }
	      MultipartFile file = uc.getUser_image();
	      String dir = " C:\\workspace\\bucketlist7\\99.bucketlist\\web\\img\\users\\";
	      MyUtil.saveFile(file, dir);
	      return mv;
	   }
	
	
	@RequestMapping("/userslist.bk")
	public ModelAndView list(Object obj){
		ModelAndView mv = new ModelAndView("main");
		ArrayList<Object> list = null;
		
		try {
			list = biz.get();
			mv.addObject("userslist",list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mv.addObject("center","users/list");
		return mv;
	}
	
	@RequestMapping("/usersupdate.bk")
	public ModelAndView updateimpl(UpdateUsersCommand uuc) throws Exception{
		ModelAndView mv = new ModelAndView("main");
		Users users = null;
		MultipartFile file = uuc.getNew_user_image(); //null�̸� ����������ϰڴ�.
		if(file == null || file.getOriginalFilename().equals("")){ //file���� null�� �������� spring���� ������� ���´�
			users = new Users(uuc.getUser_id(), uuc.getUser_password(), uuc.getUser_name(), uuc.getUser_email(), uuc.getUser_image(), new Date(), true);
		}else{
			String dir = "C:\\workspace\\99.bucketlist\\web\\img\\";
			MyUtil.saveFile(file, dir);
			users = new Users(uuc.getUser_id(), uuc.getUser_password(), uuc.getUser_name(), uuc.getUser_email(), uuc.getNew_user_image().getOriginalFilename(), new Date(), true);
		}
		
		biz.modify(users);
		return mv;
	}
	
	@RequestMapping("/usersdelete.bk")
	public String remove(UsersCommand uc){
		try {
			biz.remove(uc.getUser_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/userslist.bk"; 
	}
	
	@RequestMapping("/mypage.bk")
	public ModelAndView mypage(HttpServletRequest request, Object obj) {
		ModelAndView mv = new ModelAndView("main");
		
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("loginuser");
	
		mv.addObject("user", user);
	
		mv.addObject("center","mypage");
		return mv;
	}
	
	
	
}
