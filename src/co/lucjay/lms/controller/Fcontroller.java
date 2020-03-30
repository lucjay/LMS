package co.lucjay.lms.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.board.command.BoardInsertCommand;
import co.lucjay.lms.board.command.BoardListCommand;
import co.lucjay.lms.command.BoardInputCommand;
import co.lucjay.lms.command.BoardViewCommand;
import co.lucjay.lms.command.Command;
import co.lucjay.lms.command.Homecommand;
import co.lucjay.lms.command.Joincommand;
import co.lucjay.lms.command.LogoutCommand;
import co.lucjay.lms.command.MemberIdCheckCommand;
import co.lucjay.lms.command.MemberInsertCommand;
import co.lucjay.lms.command.MemberListCommand;
import co.lucjay.lms.command.loginCheckCommand;

@WebServlet("/Fcontroller")
public class Fcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HashMap<String, Command> list = null;

	public Fcontroller() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/home.do", new Homecommand());// 처음보여 주는 페이지
		list.put("/login.do", new Logincommand()); // 로그인처리
		list.put("/logout.do", new LogoutCommand());
		list.put("/join.do", new Joincommand());
		list.put("/loginCheck.do", new loginCheckCommand());
		list.put("/memberList.do", new MemberListCommand());
		list.put("/memberInsert.do", new MemberInsertCommand());
		list.put("/boardList.do", new BoardListCommand());
		list.put("/boardInsert.do", new BoardInsertCommand());
		list.put("/boardInput.do", new BoardInputCommand());
		list.put("/boardView.do", new BoardViewCommand());
		list.put("/idCheck.do", new MemberIdCheckCommand());

		// 계속적으로 매핑을 추가하면 된다.
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = url.substring(contextPath.length());
		Command comm = list.get(path); // 적절한 command를 찾음

		String view = comm.exec(request, response); // 실행할클래스를 동작
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}
