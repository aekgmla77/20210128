package co.micol.board.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.web.BoardDelete;
import co.micol.board.web.BoardFormCommand;
import co.micol.board.web.BoardInsert;
import co.micol.board.web.BoardListCommand;
import co.micol.board.web.BoardSelect;
import co.micol.board.web.BoardUpdate;
import co.micol.board.web.BoardUpdateCommand;
import co.micol.board.web.MainCommand;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HashMap<String, Command> map = new HashMap<String, Command>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainCommand());
		map.put("/boardList.do", new BoardListCommand());
		map.put("/boardForm.do", new BoardFormCommand());
		map.put("/boardInsert.do", new BoardInsert());
		map.put("/boardSelect.do", new BoardSelect());
		map.put("/boardDelete.do", new BoardDelete());
		map.put("/boardupForm.do", new BoardUpdateCommand());
		map.put("/boardUpdate.do", new BoardUpdate());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());  // 실제 요청한 페이지(경로)
		
		Command command = map.get(path);  // 요청한 것을 처리하는 command를 찾아줌.
		String viewPage = command.execute(request, response);  // 처리한 후 결과를 돌려줄 page 값을 받음.
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
