package boardController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardService;
import board.BoardVo;

@WebServlet("/boardwrite")
public class BoardWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static BoardService service = new BoardService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget 실행");

		BoardVo b = new BoardVo();
		
		b.setTitle(getServletInfo());
		
		String title = req.getParameter("title");
		String content = req.getParameter("contents");
		int cid = Integer.parseInt(req.getParameter("cid"));
		int ucode = Integer.parseInt(req.getParameter("ucode"));
		
		
		
		System.out.println(title);
		System.out.println(content);

//		req.setAttribute("msg", "글 등록 성공");
//		req.setAttribute("location", "/boardlist");
//		req.getRequestDispatcher("/views/common/msg.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
