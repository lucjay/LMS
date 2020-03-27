package co.lucjay.lms.command;

import java.io.IOException;

import java.rmi.ServerException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.VO.MemberVo;
import co.lucjay.lms.dao.MemberDao;

public class MemberListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		// DB작업
		MemberDao dao = new MemberDao();
		ArrayList<MemberVo> list = new ArrayList<MemberVo>();
		list = dao.select();

		request.setAttribute("members", list); // 결과값을 실어주는 구문
		// request.setAttribute("변수명","결과값")
		String path = "views/student/memberlist2.jsp"; // 보여줄페이지
		return path;
	}

}
