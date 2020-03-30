package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {

		HttpSession session = request.getSession(false);
		session.invalidate();
		return "home.do";
	}

}
