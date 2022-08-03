package culture;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import common.PageInfo;

public class CultureDIDao {

	public int insert(Connection conn, CultureDiVo culturedi) {
		try {
			String sql = "INSERT INTO CulturalDi(ccbaAsno, ccbaKdcd, ccbaCtcd, "
					+ "longitude, latitude, ccmaName, ccbaMnm1, gcodeName, "
					+ "bcodeName, mcodeName, scodeName, ccbaCtcdNm, ccbaQuan, "
					+ "ccbaAsdt, ccbaLcad, ccceName, ccbaAdmin, imageUrl, content) "
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setString(cnt++, culturedi.getCcbaAsno());
			pstmt.setInt(cnt++, culturedi.getCcbaKdcd());
			pstmt.setString(cnt++, culturedi.getCcbaCtcd());
			pstmt.setString(cnt++, culturedi.getLongitude());
			pstmt.setString(cnt++, culturedi.getLatitude());
			pstmt.setString(cnt++, culturedi.getCcmaName());
			pstmt.setString(cnt++, culturedi.getCcbaMnm1());
			pstmt.setString(cnt++, culturedi.getGcodeName());
			pstmt.setString(cnt++, culturedi.getBcodeName());
			pstmt.setString(cnt++, culturedi.getMcodeName());
			pstmt.setString(cnt++, culturedi.getScodeName());
			pstmt.setString(cnt++, culturedi.getCcbaCtcdNm());
			pstmt.setString(cnt++, culturedi.getCcbaQuan());
			pstmt.setString(cnt++, culturedi.getCcbaAsdt());
			pstmt.setString(cnt++, culturedi.getCcbaLcad());
			pstmt.setString(cnt++, culturedi.getCcceName());
			pstmt.setString(cnt++, culturedi.getCcbaAdmin());
			pstmt.setString(cnt++, culturedi.getImageUrl());
			pstmt.setString(cnt++, culturedi.getContent());

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int insert(Connection conn, CultureImgVo cultureImg) {
		try {
			String sql = "INSERT INTO IMAGE(ccbaAsno, ccbaKdcd, ccbaCtcd, sn, imageNuri, imageUrl, ccimDesc) "
					+ "VALUES(?,?,?,?,?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			int cnt = 1;
			pstmt.setString(cnt++, cultureImg.getCcbaAsno());
			pstmt.setInt(cnt++, cultureImg.getCcbaKdcd());
			pstmt.setString(cnt++, cultureImg.getCcbaCtcd());
			pstmt.setInt(cnt++, cultureImg.getSn());
			pstmt.setString(cnt++, cultureImg.getImageNuri());
			pstmt.setString(cnt++, cultureImg.getImageUrl());
			pstmt.setString(cnt++, cultureImg.getCcimDesc());

			int result = pstmt.executeUpdate();
			pstmt.close();
			return result;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	// 문화재 갯수를 가져오는 쿼리문
	public int getCultureCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select COUNT(*) FROM CulturalDi";
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return result;
	}
	
	// 문화재 리스트를 가져오는 쿼리문
	public List<CultureDiVo> findAll(Connection conn, PageInfo pageInfo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CultureDiVo> list = new ArrayList<CultureDiVo>();
		String query = "SELECT RNUM, c.* FROM  "
				+ "    (SELECT ROWNUM AS RNUM, c.* FROM "    
				+ "    (SELECT c.* from  CulturalDi c order by ccbaKdcd asc)c)c "
				+ "    where RNUM BETWEEN ? and ?";
				

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartList());
			pstmt.setInt(2, pageInfo.getEndList());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CultureDiVo culture = new CultureDiVo();
				culture.setCcbaMnm1("ccbaMnm1"); 
				culture.setImageUrl("imageUrl"); 
				
				list.add(culture);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}
	
	//==============================================================
	// 문화재 갯수를 가져오는 쿼리문
	// searchMap : key=탐색할 컨텐츠, value=키워드
	// - 탐색 가능 컨텐츠 :문화재명(key1),지정종목(key2), 시대(key3), 지역(key4),   
	
	public int getCultureCount(Connection conn, Map<String, String> searchMap) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM culturaldi c "
				+ "WHERE 1 = 1 ";
		
		if (searchMap.containsKey("ccbaMnm1")) {
			query += "AND c.ccbaMnm1 LIKE ? ";
		}
		if (searchMap.containsKey("ccmaName")) {
			query += "AND c.ccmaName LIKE ? ";
		}
		if (searchMap.containsKey("ccceName")) {
			query += "AND c.ccceName LIKE ? ";
		}
		if (searchMap.containsKey("ccbaCtcdNm")) {
			query += "AND c.ccbaCtcdNm LIKE ? ";
		}
		
		
		int result = 0;
		//System.out.println(query);
		
		try {
			pstmt = conn.prepareStatement(query);
			int count = 1;
			
			if (searchMap.containsKey("ccbaMnm1")) {
				pstmt.setString(count++, "%" + searchMap.get("ccbaMnm1") + "%");
			}
			if (searchMap.containsKey("ccmaName")) {
				pstmt.setString(count++, "%" + searchMap.get("ccmaName") + "%");
			}
			if (searchMap.containsKey("ccceName")) {
				pstmt.setString(count++, "%" + searchMap.get("ccceName") + "%");
			}
			if (searchMap.containsKey("ccbaCtcdNm")) {
				pstmt.setString(count++, "%" + searchMap.get("ccbaCtcdNm") + "%");
			}
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return result;
	}
	
	// 문화재 리스트를 가져오는 쿼리문 (조건이 있을때)
	public List<CultureDiVo> findAll(Connection conn, PageInfo pageInfo, Map<String, String> searchMap) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CultureDiVo> list = new ArrayList<CultureDiVo>();
		
		String queryBefore = "SELECT RNUM,c.* FROM "
				+ "(SELECT ROWNUM AS RNUM, c.* FROM "
				+ "(SELECT c.* FROM  CulturalDi c "
				+ "WHERE 1 = 1 ";
				
		String queryAfter = "order by ccbaKdcd asc " + ")c " + ")c " + "where RNUM BETWEEN ? and ?";
		
		if (searchMap.containsKey("ccbaMnm1")) {
			queryBefore += "AND c.ccbaMnm1 LIKE ? ";
		}
		if (searchMap.containsKey("ccmaName")) {
			queryBefore += "AND c.ccmaName LIKE ? ";
		}
		if (searchMap.containsKey("ccceName")) {
			queryBefore += "AND c.ccceName LIKE ? ";
		}
		if (searchMap.containsKey("ccbaCtcdNm")) {
			queryBefore += "AND c.ccbaCtcdNm LIKE ? ";
		}
		
		String query = queryBefore + queryAfter;
//		System.out.println(query);
		
		try {
			pstmt = conn.prepareStatement(query);
			
			int count = 1;
			
			if (searchMap.containsKey("ccbaMnm1")) {
				pstmt.setString(count++, "%" + searchMap.get("ccbaMnm1") + "%");
			}
			if (searchMap.containsKey("ccmaName")) {
				pstmt.setString(count++, "%" + searchMap.get("ccmaName") + "%");
			}
			if (searchMap.containsKey("ccceName")) {
				pstmt.setString(count++, "%" + searchMap.get("ccceName") + "%");
			}
			if (searchMap.containsKey("ccbaCtcdNm")) {
				pstmt.setString(count++, "%" + searchMap.get("ccbaCtcdNm") + "%");
			}
			
			pstmt.setInt(count++, pageInfo.getStartList());
			pstmt.setInt(count++, pageInfo.getEndList());
			
			rs = pstmt.executeQuery();
			int cnt = 1;
			while (rs.next()) {
				CultureDiVo vo = new CultureDiVo();
				vo.setCcbaAsno(rs.getString("ccbaasno"));
				vo.setCcbaKdcd(rs.getInt("ccbaKdcd"));
				vo.setCcbaCtcd(rs.getString("ccbaCtcd"));
				vo.setLongitude(rs.getString("longitude"));
				vo.setLatitude(rs.getString("latitude"));
				vo.setCcmaName(rs.getString("ccmaName"));
				vo.setCcbaMnm1(rs.getString("ccbaMnm1"));
				vo.setGcodeName(rs.getString("gcodeName"));
				vo.setBcodeName(rs.getString("bcodeName"));
				vo.setMcodeName(rs.getString("mcodeName"));
				vo.setScodeName(rs.getString("scodeName"));
				vo.setCcbaCtcdNm(rs.getString("ccbaCtcdNm"));
				vo.setCcbaQuan(rs.getString("ccbaQuan"));
				vo.setCcbaAsdt(rs.getString("ccbaAsdt"));
				vo.setCcbaLcad(rs.getString("ccbaLcad"));
				vo.setCcceName(rs.getString("ccceName"));
				vo.setCcbaAdmin(rs.getString("ccbaAdmin"));
				vo.setImageUrl(rs.getString("imageUrl"));
				vo.setContent(rs.getString("content"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return list;
	}
	
	
	//문화제 상세 페이지(문화재)
	public CultureDiVo getcuCultureDiVo(Connection conn, String ccbaasno, String ccbaMnm1, int ccbakdcd) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		CultureDiVo culturediVo = new CultureDiVo();
		
		String sql = "SELECT * FROM culturaldi "+
					 "where CCBAASNO = ? " +
					 "AND ccbaMnm1 = ? " +
					 "AND ccbakdcd = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ccbaasno);
			pstmt.setString(2, ccbaMnm1);
			pstmt.setInt(3, ccbakdcd);
			rs = pstmt.executeQuery();
			
			int cnt = 1;
			
			while (rs.next()) {
				culturediVo.setCcbaAsno(rs.getString(cnt++));
				culturediVo.setCcbaKdcd(rs.getInt(cnt++));
				culturediVo.setCcbaCtcd(rs.getString(cnt++));
				culturediVo.setLongitude(rs.getString(cnt++));
				culturediVo.setLatitude(rs.getString(cnt++));
				culturediVo.setCcmaName(rs.getString(cnt++));
				culturediVo.setCcbaMnm1(rs.getString(cnt++));
				culturediVo.setGcodeName(rs.getString(cnt++));
				culturediVo.setBcodeName(rs.getString(cnt++));
				culturediVo.setMcodeName(rs.getString(cnt++));
				culturediVo.setScodeName(rs.getString(cnt++));
				culturediVo.setCcbaCtcdNm(rs.getString(cnt++));
				culturediVo.setCcbaQuan(rs.getString(cnt++));
				culturediVo.setCcbaAsdt(rs.getString(cnt++));
				culturediVo.setCcbaLcad(rs.getString(cnt++));
				culturediVo.setCcceName(rs.getString(cnt++));
				culturediVo.setCcbaAdmin(rs.getString(cnt++));
				culturediVo.setImageUrl(rs.getString(cnt++));
				culturediVo.setContent(rs.getString(cnt++));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return culturediVo;
	}
	
	
	//문화제 상세 페이지(이미지)
	public CultureImgVo getcuCultureimg(Connection conn, String ccbaasno, String ccbaMnm1, int ccbakdcd) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		CultureImgVo img = new CultureImgVo();
		
		String sql = "SELECT imageurl, ccimdesc FROM image "+
					 "where CCBAASNO = ? " +
					 "AND ccbaMnm1 = ? " +
					 "AND ccbakdcd = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ccbaasno);
			pstmt.setString(2, ccbaMnm1);
			pstmt.setInt(3, ccbakdcd);
			rs = pstmt.executeQuery();
			
			int cnt = 1;
			
			while (rs.next()) {
				img.setImageUrl(rs.getString(cnt++));
				img.setCcimDesc(rs.getString(cnt++));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		return img;
	}
	
}
