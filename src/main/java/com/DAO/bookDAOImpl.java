package com.DAO;
import java.util.*;
import java.sql.*;
import java.util.List;

import com.entity.bookDtls;


public class bookDAOImpl implements bookDAO {
	
	private Connection con;
	
	public bookDAOImpl(Connection con) {
		super();
		this.con = con;
	}
	
	
	public boolean addBooks(bookDtls b) {
		boolean f = false;
				
		try {
			String query = "insert into books_dtls(bookname,author,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setDouble(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
		
		    int i = ps.executeUpdate();
		    
		    if(i ==1) {
		    	f = true;
		    }
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
				
		return f;
	}


	public List<bookDtls> getAllBooks() {
		List<bookDtls> list = new ArrayList<>();
		bookDtls b= null;
		
		try {
			
			String sql = "select * from books_dtls";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new bookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				
				list.add(b);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	public bookDtls getBookbyId(int id) {
		bookDtls b = null;
		
		try {
			String qurey = "select * from books_dtls where bookId=?";
			PreparedStatement ps = con.prepareStatement(qurey);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				b = new bookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return b;
	}



	public boolean updateEditBooks(bookDtls b) {
		boolean f = false;
		try {
			String qurey = "update books_dtls set bookname=?,author=?,price=?, status=?, where bookId =?";
			PreparedStatement ps = con.prepareStatement(qurey);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setDouble(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setInt(5, b.getBookId());
			
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}


	public boolean deleteBooks(int id) {
		boolean f = false;
		try {
			String sql = "delete from books_dtls where bookId =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1) {
				f = true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
}
