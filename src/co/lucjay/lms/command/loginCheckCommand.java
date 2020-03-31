package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.lucjay.lms.VO.MemberVo;
import co.lucjay.lms.dao.MemberDao;

public class loginCheckCommand implements Command {

	@SuppressWarnings("unused")
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		// db
		HttpSession session = request.getSession(true); // 세션가져오기
		MemberDao dao = new MemberDao();
		MemberVo member = new MemberVo();

		String path = null;

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		member.setId(id);
		member.setPw(pw);
//		member = new MemberVo(id, pw);
		member = dao.selectMember(member);
//		request.setAttribute("member", member);
		session.setAttribute("name", member.getName()); // 이름을 담아줌
		session.setAttribute("loginid", member.getId()); // 아이디를 세션값을 담는다
		session.setAttribute("auth", member.getAuth()); // 권한을 세션에담는다
		if (member != null) {
			path = "views/student/loginOk2.jsp";
		} else {
			path = "views/student/loginFail2.jsp";
		}

		return path;
	}

}
