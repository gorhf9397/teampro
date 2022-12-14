package kr.co.teampro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.co.teampro.service.BoardService;
import kr.co.teampro.vo.BoardVO;
import kr.co.teampro.vo.ReplyVO;

@Controller
public class BoardController {
	@Autowired
	@Qualifier("bs")
	private BoardService service;
	
	@RequestMapping("/board/write")
	public String write() {
		
		return "/board/write";
	}
	
	@RequestMapping("/board/write_ok")
	public String write_ok(HttpSession session, BoardVO bvo) {
		
		return service.write_ok(session, bvo);
	}
	
	@RequestMapping("/board/list")
	public String list(Model model, HttpServletRequest request, HttpSession session) {
		
		return service.list(model,request,session);
	}
	
	@RequestMapping("/board/readnum")
	public String readnum(HttpServletRequest request) {
		
		return service.readnum(request);
	}
	
	@RequestMapping("/board/content")
	public String content(HttpServletRequest request,Model model) {
		
		return service.content(request,model);
	}
	
	@RequestMapping("/board/delete")
	public String delete(BoardVO bvo, HttpSession session) {
		
		return service.delete(bvo, session);
	}
	
	@RequestMapping("/board/update")
	public String update(HttpSession session,HttpServletRequest request,Model model) {
		
		return service.update(session,request,model);
	}
	
	@RequestMapping("/board/update_ok")
	public String update_ok(HttpServletRequest request,BoardVO bvo, HttpSession session) {
		
		return service.update_ok(request,bvo, session);
	}
	/*댓글*/
	@RequestMapping("/board/reply_write_ok")
	public String reply_write_ok(ReplyVO rvo,HttpSession session) {
		
		return service.reply_write_ok(rvo,session);
	}
	
	
	

	
	
	
}






