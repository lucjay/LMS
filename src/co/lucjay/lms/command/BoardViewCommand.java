package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.board.dao.BoardDao;
import co.lucjay.lms.board.vo.BoardVo;

public class BoardViewCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();

		vo.setBoardid(Integer.parseInt(request.getParameter("boardid")));
		vo = dao.select(vo);
		request.setAttribute("view", vo);
		return "views/board/boardView2.jsp";
	}

}
