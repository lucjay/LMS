package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {

		// 세션타임은 web.xml에서도 설정가능하고 디폴트는30초
		HttpSession session = request.getSession(false); // HttpSession session; < 이렇게 해도되긴함 그렇지만 안정적으로는 리퀘스트 겟세션사용
		session.invalidate(); // 서버에서 세션을 삭제
		return "home.do";
	}

}
