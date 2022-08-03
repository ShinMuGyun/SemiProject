package culture;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import common.PageInfo;

public class CultureService {
	
	private CultureDIDao dao = new CultureDIDao();
	private Connection conn = null;
	
	public CultureService() {
		conn = getConnection();
	}
	
	public int insert(CultureDiVo culturedi) {
		int result = dao.insert(conn, culturedi);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}

	public int insert(CultureImgVo cultureimg) {
		int result = dao.insert(conn, cultureimg);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}
	
	public int getCultureCount(Map<String, String> searchMap) {
		Connection conn = getConnection();
		int result = dao.getCultureCount(conn, searchMap);
		close(conn);
		return result;
	}
	
	public List<CultureDiVo> getCultureList(PageInfo pageinfo, Map<String, String> searchMap) {
		Connection conn = getConnection();
		List<CultureDiVo> list = dao.findAll(conn, pageinfo, searchMap);
		close(conn);
		return list;
	}
}
