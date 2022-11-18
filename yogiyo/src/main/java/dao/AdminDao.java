package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Admin;
import vo.DB;

public class AdminDao {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	Admin thisAdmin=null;
	
	public Admin select(String adminID, String pw) {
		try {
			con = DB.con();
			String sql = "select * from Admin where adminID = ? and pw = ? ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,adminID);
			pstmt.setString(2,pw);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				thisAdmin= new Admin(rs.getString(1),rs.getString(2));
			}
			
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	return thisAdmin;
	}
}
