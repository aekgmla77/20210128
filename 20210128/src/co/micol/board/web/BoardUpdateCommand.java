package co.micol.board.web;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.common.Command;
import co.micol.board.dao.BoardDao;
import co.micol.board.vo.BoardVo;

public class BoardUpdateCommand implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO �닔�젙 �뤌 �샇異�
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setbId(Integer.parseInt(request.getParameter("row")));
		vo = dao.select(vo);
		request.setAttribute("vo", vo);
		
		return "views/board/boardUpdate.jsp";
	}

}
