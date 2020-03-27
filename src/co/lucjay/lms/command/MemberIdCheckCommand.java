package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.dao.MemberDao;

public class MemberIdCheckCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {

		MemberDao dao = new MemberDao();
		String id = request.getParameter("id");
		int n = dao.memberIdCheck(id);
		request.setAttribute("check", n);

		return "views/student/idCheck.jsp";

	}

}
