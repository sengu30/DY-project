package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.DB;
import vo.Menu;

public class MenuDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public List<Menu> showMenu(String registnum) {	//가게별 메뉴 불러오기
		List<Menu> mlist= new ArrayList<Menu>();
		try {
			con=DB.con();
			String sql = "SELECT * FROM menu WHERE REGISTNUM = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,registnum);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				mlist.add(new Menu(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4)));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return mlist;
	}
	
	public void insertMenu(Menu nm) {
		try {
			con=DB.con();
			con.setAutoCommit(false);
			String sql = "INSERT INTO menu VALUES (?, ? ,?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,nm.getRegistNum());
			pstmt.setString(2,nm.getMenuname());
			pstmt.setInt(3,nm.getPrice());
			pstmt.setString(4,nm.getDescription());
			if(pstmt.execute()) {
				con.commit();}
		     } catch (SQLException e) {
				System.out.println("SQL예외: "+e.getMessage());
				try {
					con.rollback();
				} catch (SQLException e1) {
					System.out.println("롤백예외:" +e1.getMessage());
				}
				}catch(Exception e) {
					System.out.println("일반예외:"+e.getMessage());
				}
				finally {
					DB.close(rs, pstmt, con);
				}
	}
}
