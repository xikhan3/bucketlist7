package com.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.service.frame.Dao;
import com.service.mybatis.mapper.ContentsMapper;


@Repository("contentsdao") 
public class ContentsDao implements Dao {
	
	@Autowired
	ContentsMapper db;
	
	@Override
	public void insert(Object obj) throws Exception {
		
		db.insertContents(obj);
	}

	@Override
	public void update(Object obj) throws Exception {
		
		db.updateContents(obj);
	}
	
	@Override
	public void delete(Object obj) throws Exception {
		db.deleteContents(obj);
	}

	@Override
	public Object select(Object obj) throws Exception {
		return db.selectContents(obj);
	}

	@Override
	public ArrayList<Object> select() throws Exception {
		
		return db.selectAllContents();
	}

	@Override
	public ArrayList<Object> search(Object obj) throws Exception {
		return db.searchContents(obj);
	}

	@Override
	public ArrayList<Object> search(int start, int end) throws Exception {
		return db.selectAllContents(new RowBounds(start, end));
	}

}
