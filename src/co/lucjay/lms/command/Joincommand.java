package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Joincommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		return "views/student/memberJoin2.jsp";
	}

}
