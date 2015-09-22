package com.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.service.frame.Dao;
import com.service.mybatis.mapper.CommentsMapper;

@Repository("commentsdao")
public class CommentsDao implements Dao {
	@Autowired
	CommentsMapper db;
	
	
	@Override
	public void insert(Object obj) throws Exception {
		db.insertComments(obj);
	}

	@Override
	public void update(Object obj) throws Exception {
		db.updateComments(obj);

	}

	@Override
	public void delete(Object obj) throws Exception {
		db.deleteComments(obj);

	}

	@Override
	public Object select(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return db.selectComments(obj);
	}

	@Override
	public ArrayList<Object> select() throws Exception {
		// TODO Auto-generated method stub
		return db.selectAllComments();
	}

	@Override
	public ArrayList<Object> search(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return db.searchComments(obj);
	}

	@Override
	public ArrayList<Object> search(int start, int end) throws Exception {
		// TODO Auto-generated method stub
		return db.selectAllComments(new RowBounds(start, end));
	}

}
