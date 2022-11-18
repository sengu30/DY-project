package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sign01.CusLogin;
import vo.DB;
import vo.Store;

public class StoreDao {
	private Connection con;
	private PreparedStatement pstmt;
	private PreparedStatement pstmt2;
	private ResultSet rs;
	private ResultSet rs2;
	List<Store> slist=new ArrayList<Store>();
	Store thisstore= new Store();
	
	public List<Store> selectonS(String category) { // 음식점 목록에서 보여지는거
	//String registNum, String storename,String category, String minOrder, String brand
		try {
			con=DB.con();
			String sql = "SELECT s.registnum,STORENAME,CATEGORY, MINORDER ,brand\r\n"
					+ "FROM STORE s\r\n"
					+ "WHERE s.STATE ='영업' AND ADDRESS LIKE ?||'%' AND CATEGORY LIKE '%'||?||'%'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, CusLogin.logon.getAddress().substring(0, 10));
			pstmt.setString(2, category );
			rs = pstmt.executeQuery();
			while (rs.next()) {
				slist.add(new Store(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
			}
			for(Store ss:slist) {
				String sql2="SELECT nvl(AVG(star),0) \"avgstar\", COUNT(review) \"cntreview\", COUNT(cmmnt) \"countcmmnt\"\r\n"
						+ "FROM myOrder m, REVIEW r \r\n"
						+ "WHERE m.ordernum=r.ordernum AND m.REGISTNUM = ? ";
				pstmt2 = con.prepareStatement(sql2);
				pstmt2.setString(1,ss.getRegistNum());
				rs2 = pstmt2.executeQuery();
				if(rs2.next()) {
					ss.setAvgstar(rs2.getString(1));
					ss.setCntreview(rs2.getInt(2));
					ss.setCountcmmnt(rs2.getInt(3));
				}
			}

		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return slist;
	}

	public Store SelectLogin(String registNum, String pw) { // 사장님 로그인할때
		try {
			con = DB.con();
			String sql = "SELECT * FROM store where RegistNum = ? "
					+ "and pw= ? AND state LIKE '영업'||'%'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, registNum);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				thisstore= new Store(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),
						rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
			}else {
				thisstore=null;
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return thisstore;
	}

	public Store selectAll(String registNum) { //가게 선택해서 조회
		try {
			con = DB.con();
			String sql = "SELECT * FROM store where RegistNum = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, registNum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				thisstore= new Store(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),
						rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return thisstore;
	}
	
}
