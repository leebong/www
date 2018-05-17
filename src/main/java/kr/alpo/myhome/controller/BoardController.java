package kr.alpo.myhome.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.alpo.myhome.dao.BoardMapper;
import kr.alpo.myhome.object.Board;


@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	@Autowired
	BoardMapper boardMapper;
	
	@RequestMapping(value="/board/Board_List", method= RequestMethod.GET)
	public String boardListGet(Model model) {
		Board board = new Board(1, "제목", "작성자", "내용");
		model.addAttribute("board", board);	
		return "/board/Board_List";
	}
	
	
	
	@RequestMapping(value="/board/Board_Write", method= RequestMethod.GET)
	public String boardWriteGet() {
		return "/board/Board_Write";
	}
	
	@RequestMapping(value="/board/Board_Write_action", method= RequestMethod.POST)
	public String boardWriteActionPost(HttpServletRequest request, Model model) {
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String author = request.getParameter("author");
		
		boardMapper.setBoard(title, contents, author);
		
		return "/board/Board_Write_action";
	}
	
	@RequestMapping(value="/board/Board_View", method= RequestMethod.GET)
	public String boardViewGet() {
		return "/board/Board_View";
	}
	
	@RequestMapping(value="/board/Board_View", method= RequestMethod.POST)
	public String boardViewPost() {
		return "/board/Board_View";
	}
	
	@RequestMapping(value="/board/Board_Update", method={RequestMethod.GET, RequestMethod.POST})
	public String boardUpdateGetPost() {
		return "/board/Board_Update";
	}
	

	
	
	//신규
	@RequestMapping(value="/board/write", method= RequestMethod.GET)
	public String boardwriteGet(Model model) {
		return "/board/write";
	}
	
	@RequestMapping(value="/board/write", method= RequestMethod.POST)
	public String boardwritePost(Model model, String author, String title, String contents) {
		model.addAttribute("title", title);
		model.addAttribute("author", author);
		model.addAttribute("contents", contents);
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/board/list", method= RequestMethod.GET)
	public String boardlistGet(Model model, String author, String title, String contents) {
		Board b = new Board(1, title, author, contents);	
		model.addAttribute("board", b);
		return "/board/list";
	}

}