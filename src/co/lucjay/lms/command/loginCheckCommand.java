package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.VO.MemberVo;
import co.lucjay.lms.dao.MemberDao;

public class loginCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		// db
		MemberDao dao = new MemberDao();
		MemberVo member = null;

		String path = null;
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		member = new MemberVo(id, pw);
		member = dao.selectMember(member);
		request.setAttribute("member", member);
		if (member != null) {
			path = "views/student/loginOk2.jsp";
		} else {
			path = "views/student/loginFail2.jsp";
		}

		return path;
	}

}
