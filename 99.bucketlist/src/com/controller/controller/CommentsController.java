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
	   public ModelAndView register(CommentsCommand uc) throws Exception{
		
	      ModelAndView mv = new ModelAndView("main");
	      Comments c = new Comments(uc.getComments_id(), uc.getContents_id(), uc.getUser_id(), uc.getComments_content(), uc.getComments_regdate(), uc.getComments_image().getOriginalFilename());
	      System.out.println(c);
	      try {
	         biz.register(c);
	         System.out.println("성공");
	      } catch (Exception e) {
	         System.out.println("실패");
	         e.printStackTrace();
	      }
	      MultipartFile file = uc.getComments_image();
	      
	      String dir = "C:\\workspace\\99.bucketlist\\web\\img\\comments\\";
	      MyUtil.saveFile(file, dir);
	      return mv;
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
	/*
	@RequestMapping("/contentsupdate.bk")
	public ModelAndView update(int id) throws Exception{
		ModelAndView mv = new ModelAndView("main");
		
		mv.addObject("contentsupdate", biz.get(id));
		mv.addObject("center","contentsupdate");
		return mv;
	}
	
	@RequestMapping("/contentsupdateimpl.bk")
	public String updateimpl(UpdateContentsCommand ucc) throws Exception{
		
		Contents contents = null;
		MultipartFile file1 = ucc.getNew_contents_image1();
		MultipartFile file2 = ucc.getNew_contents_image2();
		MultipartFile file3 = ucc.getNew_contents_image3();
		
		
		if(file1 == null || file1.getOriginalFilename().equals("")){
			contents = new Contents(
					ucc.getContents_id(), 
					ucc.getUser_id(), 
					ucc.getCategory_id(), 
					ucc.getContents_title(),
					ucc.getContents_image1(), 
					ucc.getContents_image2(), 
					ucc.getContents_image3(),
					ucc.getContents_content(), ucc.getContents_goaldate(), 
					ucc.getContents_loc(), 
					ucc.getLat(), ucc.getLon(), 
					ucc.getContents_regdate(), 
					ucc.getContents_private(),
					ucc.getContents_com()
					); 
			
		}else{
			String dir = "C:\\workspace\\99.bucketlist\\web\\img\\contents\\";
			MyUtil.saveFile(file1, dir);
			MyUtil.saveFile(file2, dir);
			MyUtil.saveFile(file3, dir);
			
			contents = new Contents(
					ucc.getContents_id(), 
					ucc.getUser_id(), 
					ucc.getCategory_id(), 
					ucc.getContents_title(),
					ucc.getNew_contents_image1().getOriginalFilename(), 
					ucc.getNew_contents_image2().getOriginalFilename(), 
					ucc.getNew_contents_image3().getOriginalFilename(),
					ucc.getContents_content(), ucc.getContents_goaldate(), 
					ucc.getContents_loc(), 
					ucc.getLat(), ucc.getLon(), 
					ucc.getContents_regdate(), 
					ucc.getContents_private(),
					ucc.getContents_com()
					);
			
		}
		
		biz.modify(contents);
		
		return "redirect:contentsdetail.bk?id="+ucc.getUser_id();
	}*/
	
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
