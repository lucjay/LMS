package co.lucjay.lms.command;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.lucjay.lms.VO.MemberVo;
import co.lucjay.lms.dao.MemberDao;

public class MemberInsertCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		request.setCharacterEncoding("utf-8");

		MemberDao dao = new MemberDao();
		MemberVo vo = new MemberVo();

		String filepath = request.getSession().getServletContext().getRealPath("fileupload");
		int filesize = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(request, filepath, filesize, "utf-8",
				new DefaultFileRenamePolicy());

		Enumeration<?> files = multi.getFileNames();
		String str = (String) files.nextElement();

		vo.setId(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setPw(request.getParameter("pw"));
		vo.setAddress(request.getParameter("address"));
		vo.setTel(request.getParameter("tel"));
		vo.setGender(request.getParameter("gender"));

		String[] hobby = request.getParameterValues("hobby"); // 취미는 배열
		if (hobby == null) { // 값을 입력안하고 넘어왔을때
			vo.setHobby("");
		} else { // 정상적으로 취미를 입력했을때
			String hobbyJoint = " ";
			for (String h : hobby) {
				hobbyJoint += h.concat(" "); // hobby를 결합
			}
			vo.setHobby(hobbyJoint);
		}

		String ofile = multi.getOriginalFileName(str);
		vo.setFilename(ofile); // 파일명을 담음

		String path = null;
		int n = dao.memberInsert(vo);

		if (n != 0) {
			String file = multi.getFilesystemName(str);
			path = "views/student/memberJoinSucces2.jsp";
		} else {
			path = "views/student/memberJoinFail2.jsp";

		}
		return path;
	}
}
