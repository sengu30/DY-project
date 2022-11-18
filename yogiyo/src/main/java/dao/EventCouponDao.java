package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.Coupon;
import vo.DB;
import vo.Events;

public class EventCouponDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public Events getEvent(String registnum, int totalprice) {
		Events onev=new Events("사용할 수 있는 이벤트가 없습니다",0,"","");
		try {
			con = DB.con();
			String sql = "SELECT * FROM events WHERE registnum = ? AND condi<= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, registnum);
			pstmt.setInt(2, totalprice);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			if(onev.getDiscount() < rs.getInt(2)) {
				onev=new Events(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4));
				}
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return onev;
	}
	
	public Coupon getCoupon(String couponnum) {
		Coupon cpn=new Coupon();
		try {
			con = DB.con();
			String sql = "SELECT * FROM COUPON WHERE couponnum = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, couponnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cpn=new Coupon(rs.getString(1),rs.getInt(2));
			}else {cpn=null;}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return cpn;
	}

}
