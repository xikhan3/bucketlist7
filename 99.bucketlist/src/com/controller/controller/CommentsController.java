package com.controller.controller;

import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;

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

import com.controller.command.CommentsCommand;
import com.controller.command.ContentsCommand;
import com.controller.command.UpdateContentsCommand;
import com.controller.command.UpdateUsersCommand;
import com.controller.command.UsersCommand;
import com.controller.util.MyUtil;
import com.service.frame.Biz;
import com.service.vo.Comments;
import com.service.vo.Contents;
import com.service.vo.Users;

@Controller
public class CommentsController {
	@Resource(name="commentsbiz")
	Biz biz;
	
	
	   @RequestMapping("/commentsregister.bk")
	      public String register(CommentsCommand uc) throws Exception{
	         //ModelAndView mv = new ModelAndView("main");
	         Comments c = new Comments(uc.getComments_id(), uc.getContents_id(), uc.getUser_id(), uc.getComments_content(), uc.getComments_regdate(), uc.getComments_image());
	         System.out.println(c);
	         try {
	            biz.register(c);
	            System.out.println("성공");
	         } catch (Exception e) {
	            System.out.println("실패");
	            e.printStackTrace();
	         }
	         
	         /*MultipartFile file = uc.getComments_image();
	         
	         String dir = "C:\\workspace\\bucketlist7\\99.bucketlist\\web\\img\\comments\\";
	         MyUtil.saveFile(file, dir);*/
	      
	         return "redirect:/contentsdetail.bk?id="+c.getContents_id();
	      }
	
	@RequestMapping("/commentslist.bk")
	public ModelAndView list(Object obj){
		ModelAndView mv = new ModelAndView("main");
		ArrayList<Object> list = null;
		try {
			list = biz.get();
			
			mv.addObject("commentslist",list);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("center","commentslist");
		return mv;
	}
		
	@RequestMapping("/commentsdelete.bk")
	public String remove(CommentsCommand uc){
		try {
			biz.remove(uc.getUser_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/commentslist.bk"; 
	}
	
	
}
