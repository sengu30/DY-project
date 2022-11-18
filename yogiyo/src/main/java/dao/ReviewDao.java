package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.DB;
import vo.Review;

public class ReviewDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	List<Review> rlist=new ArrayList<Review>();
	
	public List<Review> seeReview(String registnum) {
		try {
			con=DB.con();
			String sql="SELECT * FROM review r, myorder m WHERE r.ordernum=m.ordernum AND m.REGISTNUM = ? ORDER BY r.ordernum DESC";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, registnum);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				rlist.add(new Review(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4)));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return rlist;
		
	}
}
