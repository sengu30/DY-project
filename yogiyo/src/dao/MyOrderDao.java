package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.DB;
import vo.Myorder;

public class MyOrderDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	//주문할때
	public int insertorder(Myorder mo){
		int result=0;
		try {
			con = DB.con();
			con.setAutoCommit(false);
			String sql = "INSERT INTO MYORDER values(to_char(SYSDATE,'yymmdd')||sqc1.nextval,"
					+ "?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,mo.getRegistnum());//사업자번호
			pstmt.setString(2,mo.getUserid() );
			pstmt.setString(3,mo.getContect() );//연락처
			pstmt.setString(4, mo.getRequest());//요청사항
			pstmt.setString(5,mo.getMenu() );//메뉴
			pstmt.setInt(6,mo.getPrice() );//결제금액
			pstmt.setString(7,mo.getPayment());//payment
			pstmt.setString(8,mo.getState() );//state
			pstmt.setString(9,mo.getCouponnum() );//couponnum
			pstmt.setString(10,mo.getEventname());//eventname
			result=pstmt.executeUpdate();			
			con.commit();
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return result;
	}
	
	
	//가게에서 주문 상태별 확인
	public List<Myorder> selectO(String registNum, String state) {	
		List<Myorder> olist=new ArrayList<Myorder>();
		try {
			con=DB.con();
			String sql = "SELECT m.*, c.ADDRESS  FROM MYORDER m, CUSTOMER c WHERE c.USERID =m.USERID and REGISTNUM = ? AND state = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,registNum);
			pstmt.setString(2,state);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				olist.add(new Myorder(
						rs.getString("ordernum"), rs.getString("registnum"),
						rs.getString("userid"), rs.getString("contect"),
						rs.getString("request"), rs.getString("menu"),
						rs.getInt("price"), rs.getString("payment"), rs.getString("state"),
						rs.getString("couponnum"), rs.getString("eventname")
						));
				}
			
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return olist;
	}
	
	//주문상태 변경
	public boolean updateOstate(String state,String ordernum) {
		boolean ischanged=false;
		try {
			con = DB.con();
			con.setAutoCommit(false);
			String sql = "UPDATE MYORDER SET state= ? WHERE ORDERNUM = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, state);
			pstmt.setString(2, ordernum);
			ischanged=pstmt.execute();
			con.commit();
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return ischanged;
	}
	
	}
