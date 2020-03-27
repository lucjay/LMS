package co.lucjay.lms.board.command;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.board.dao.BoardDao;
import co.lucjay.lms.board.vo.BoardVo;
import co.lucjay.lms.command.Command;

public class BoardListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		// 여기는 게시판 목록을 보여주는곳 db작업
		// request.setAttribute 담고
		// path를 리턴
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		list = dao.selectAll();
		request.setAttribute("boardList", list);
		String path = "views/board/boardList2.jsp";
		return path;
	}

}
