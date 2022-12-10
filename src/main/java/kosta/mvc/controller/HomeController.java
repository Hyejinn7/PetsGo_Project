package kosta.mvc.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kosta.mvc.domain.Camp;
import kosta.mvc.domain.CommunityBoard;
import kosta.mvc.domain.Member;
import kosta.mvc.service.CampService;
import kosta.mvc.service.CommunityService;
import kosta.mvc.service.MemberService;

@Controller
public class HomeController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private CommunityService communityService;
	

	
	@RequestMapping("/")
	public String index() {
		return "main";
	}
	
	@RequestMapping("/{}")
	public void url() {}
	
	
	/**
	 *  커뮤니티 전체 검색
	 */
//	@RequestMapping("/list")
//	public void list(Model model, @RequestParam(defaultValue = "1")int nowPage) {
//		List<CommunityBoard> communityBoardList = communityService.selectAll();
//		model.addAttribute("communityBoardList", communityBoardList);
//		
//	}
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(String tag, Model model, @RequestParam(defaultValue = "1")int nowPage) {
		
		List<CommunityBoard> list = null;
		
		System.out.println("tag = " + tag);
		
		//태그로 검색하기
		if(tag != null) {
			list = communityService.selectByTag(tag);
		} else {
			list = communityService.selectAll();
		}
			System.out.println("list = " + list);
		model.addAttribute("communityBoardList", list);
		
	}
	
	/**
	 * 회원/사업자에 따라 로그인 후 이동할 기본 페이지
	 * */
	@RequestMapping("/default")
	public String defaultAfterLogin(Authentication auth) throws AuthenticationException {		
		
		Object object = auth.getPrincipal();
		if(object instanceof Member) {
			Member  m = (Member)auth.getPrincipal();
			return "redirect:/main";
		}else {
			Camp  c = (Camp)auth.getPrincipal();
			return "redirect:/owner/campHome";
		}
	}
	
	/**
	 * 회원 가입
	 * */
	@RequestMapping("/register")
	public String register(Member member, HttpSession session) {
		memberService.register(member);
		
		session.setAttribute("member", member);

		return "redirect:/main";
	}	
	
	/**
	 * 로그아웃
	 * */
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/main";
	}	
	
}
