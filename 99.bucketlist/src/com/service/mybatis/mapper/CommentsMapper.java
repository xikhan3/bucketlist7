package com.service.mybatis.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

public interface CommentsMapper {
	//DAO���� ��� �� �Լ����� �����Ѵ�.
	public void insertComments(Object obj);
	public void updateComments(Object obj);
	public void updateComments2(Object obj);
	public void deleteComments(Object obj);
	public Object selectComments(Object obj);
	public ArrayList<Object> selectAllComments();
	public ArrayList<Object> searchComments(Object obj);
	public ArrayList<Object> selectAllComments(RowBounds rowBounds); //���̵� ����� �Է��ؼ� �˻�
}
