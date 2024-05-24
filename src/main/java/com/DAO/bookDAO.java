package com.DAO;

import java.util.*;

import com.entity.bookDtls;

public interface bookDAO {
	public boolean addBooks(bookDtls b);
	
	public List<bookDtls> getAllBooks();
	
	public bookDtls getBookbyId(int id);
	
	public boolean updateEditBooks(bookDtls b);
	
	public boolean deleteBooks(int id);
}
