package co.micol.board.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.common.Command;
import co.micol.board.dao.BoardDao;
import co.micol.board.vo.BoardVo;

public class BoardUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 수정
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		vo.setbContent(request.getParameter("bContent"));
		vo.setbId(Integer.parseInt(request.getParameter("bId")));
		
		int n = dao.update(vo);
		String viewPage = null;
		
		if(n != 0) {
			viewPage = "boardList.do";
		}
		
		return viewPage;
	}

}
