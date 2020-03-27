package co.lucjay.lms.board.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.lucjay.lms.command.Command;

public class BoardInsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		String path = "views/board/boardForm2.jsp";
		return path;
	}

}
