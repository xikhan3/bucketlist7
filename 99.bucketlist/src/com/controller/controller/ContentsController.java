package com.controller.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.controller.command.ContentsCommand;
import com.controller.command.UpdateContentsCommand;
import com.controller.util.MyUtil;
import com.service.frame.Biz;
import com.service.vo.Comments;
import com.service.vo.Contents;


@Controller
public class ContentsController {
	@Resource(name="contentsbiz")
	Biz biz;
	@Resource(name="commentsbiz")
	Biz biz2;
	   @RequestMapping("/contentsregister.bk")
	   public ModelAndView register(ContentsCommand uc) throws Exception{
		
	      ModelAndView mv = new ModelAndView("main");
	      Contents c = new Contents(uc.getContents_id(), uc.getUser_id(), uc.getCategory_id(), uc.getContents_title(), uc.getContents_image1().getOriginalFilename(), uc.getContents_image2().getOriginalFilename(), uc.getContents_image3().getOriginalFilename(),uc.getContents_content(), uc.getContents_goaldate(), uc.getContents_loc(), uc.getLat(), uc.getLon(), uc.getContents_regdate(), uc.getContents_private(), uc.getContents_com() );
	      System.out.println(c);
	      try {
	         biz.register(c);
	         System.out.println("성공");
	      } catch (Exception e) {
	         System.out.println("실패");
	         e.printStackTrace();
	      }
	      MultipartFile file1 = uc.getContents_image1();
	      MultipartFile file2 = uc.getContents_image2();
	      MultipartFile file3 = uc.getContents_image3();
	      
	      String dir = "C:\\workspace\\99.bucketlist\\web\\img\\contents\\";
	      MyUtil.saveFile(file1, dir);
	      MyUtil.saveFile(file2, dir);
	      MyUtil.saveFile(file3, dir);
	      
	      
	      return mv;
	   }
	   
		@RequestMapping("/contentslist.bk")
		public ModelAndView list(){
			ModelAndView mv = new ModelAndView("main");
			ArrayList<Object> list = null;
			
			try {
				list = biz.get();
				
				mv.addObject("contentslist",list);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mv.addObject("center","contentslist");
			return mv;
		}
	
	@RequestMapping("/contentsdetail.bk")
		public ModelAndView detail(int id) throws Exception{
			ModelAndView mv = new ModelAndView("main");

			ArrayList<Object> list = null;
			ArrayList<Object> list2 = new ArrayList<Object>();
			try {
				list = biz2.get();
				System.out.println("list:"+list);
				
				for(int i=0; i<list.size(); i++){
					Comments comment = (Comments)list.get(i);
					if(comment.getContents_id()==id){
						list2.add(comment);
						System.out.println(list2);
						mv.addObject("commentslist",list);
					}
				
				}
				
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			mv.addObject("contentsdetail", biz.get(id));
			mv.addObject("center", "contentsdetail");
			return mv;
		}
	
	@RequestMapping("/contentslistcategory.bk")
	public ModelAndView categorylist(String categoryid){
		ModelAndView mv = new ModelAndView("main");
		ArrayList<Object> list = null; //ArrayList 자체를 가져오기 때문에 null로 선언해도된다.
		ArrayList<Object> list2 = new ArrayList<Object>(); //이건 안돼 왜냐면 한개씩 가져올거거든
		System.out.println("id: "+categoryid);
		try {
			list = biz.get();
			
			for(int i=0; i<list.size(); i++){
				Contents c = (Contents)list.get(i);
				if(c.getCategory_id().equals(categoryid)){
					System.out.println("if c : "+c);
					list2.add(c);
					System.out.println(list2);
					mv.addObject("contentslist",list2);
					
				}
			
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("center","contentslist");
		return mv;
	}
	

	
	@RequestMapping("/contentsupdate.bk")
	public ModelAndView update(int id) throws Exception{
		ModelAndView mv = new ModelAndView("main");
		
		mv.addObject("contentsupdate", biz.get(id)); //biz에 있는 get함수 갔다가 와! contentsupdate는 내가 마음대로 정한이름
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
		System.out.println("impl"+contents);
		biz.modify(contents);
		
		return "redirect:contentslist.bk";
	}
	
	@RequestMapping("/contentsdelete.bk")
	public String remove(ContentsCommand uc){
		try {
			System.out.println("전체 : " + uc);
			System.out.println("아이디 : " + uc.getUser_id());
			biz.remove(uc.getUser_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/contentslist.bk"; 
	}
	
	
}
