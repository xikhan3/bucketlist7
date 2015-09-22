package com.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.service.frame.Dao;
import com.service.mybatis.mapper.UsersMapper;

@Repository("usersdao") 
public class UsersDao implements Dao {
	
	@Autowired
	UsersMapper db;
	
	@Override
	public void insert(Object obj) throws Exception {
		db.insertUsers(obj); //user.xml���� id�� insertUsers�ΰ��� ã�ư�
	}

	@Override
	public void update(Object obj) throws Exception {
		db.updateUsers(obj);
	}
	
	@Override
	public void delete(Object obj) throws Exception {
		db.deleteUsers(obj);
	}

	@Override
	public Object select(Object obj) throws Exception {
		return db.selectUsers(obj);
	}

	@Override
	public ArrayList<Object> select() throws Exception {
		return db.selectAllUsers();
	}

	@Override
	public ArrayList<Object> search(Object obj) throws Exception {
		return db.searchUsers(obj);
	}

	@Override
	public ArrayList<Object> search(int start, int end) throws Exception {
		return db.selectAllUsers(new RowBounds(start, end));
	}

}
