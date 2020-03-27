package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.board.dao.BoardDao;
import co.lucjay.lms.board.vo.BoardVo;

public class BoardInputCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		vo.setWriter(request.getParameter("writer"));
		vo.setWdate(Date.valueOf(request.getParameter("wdate"))); // 문자를 날짜로 변환
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));

		String path = null;
		int n = dao.insert(vo);
		if (n != 0) {
			path = "boardList.do";
		} else {
			path = "views/board/boardInsertFail2.jsp";
		}
		return path;
	}

}
