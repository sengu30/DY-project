package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import vo.Customer;
import vo.DB;

public class CustomerDao {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public static Customer Logon2=new Customer();
	//CustomerDao.Logon2
	List<Customer> clist = new ArrayList<Customer>();
	Scanner sc = new Scanner(System.in);
	
	public List<Customer> selectC() {
		try {
			con = DB.con();
			String sql = "select * from Customer";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				clist.add(new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5)));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, stmt, con);
		}
		return clist;
	}

	public boolean selectlogin(String id,String pw) {
		boolean ison=false;
		try {
			con = DB.con();
			String sql = "SELECT * FROM CUSTOMER c WHERE USERID = LOWER(?) AND pw= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Logon2=new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),	rs.getString(5));
			ison=true;
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, stmt, con);
		}
		return ison;
	}
	
	
	public List<Customer> selectid(String userid) {
		try {
			con = DB.con();
			String sql = "select * from Customer where userid = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				clist.add(new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5)));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, stmt, con);
		}
		return clist;
	}
	
	public void insertC(Customer nu) {
		String sql = "INSERT INTO CUSTOMER VALUES (?,?,?,?,?)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,nu.getUserID());
			pstmt.setString(2,nu.getPw());
			pstmt.setString(3,nu.getName());
			pstmt.setString(4,nu.getAddress());
			pstmt.setString(5,nu.getMobile());
		if(pstmt.executeUpdate()==1) {
			System.out.println("회원가입이 완료되었습니다.");
			con.commit();
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("롤백예외:" + e1.getMessage());
			}
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}

	}
	
	public Customer login(Customer tryin) {
		Customer login=null;
		try {
			con = DB.con();
			String sql = "SELECT * FROM CUSTOMER c WHERE USERID = LOWER(?) AND pw= ? ";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, tryin.getUserID());
			pstmt.setString(2, tryin.getPw());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				login=new Customer(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
			}
		} catch (SQLException e) {
			System.out.println("SQL예외: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("일반예외:" + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return login;
	}

}
