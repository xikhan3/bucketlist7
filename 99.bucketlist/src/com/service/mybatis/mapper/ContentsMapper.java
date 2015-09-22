package com.service.mybatis.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

public interface ContentsMapper {
	//DAO���� ��� �� �Լ����� �����Ѵ�.
	public void insertContents(Object obj);
	public void updateContents(Object obj);
	public void updateContents2(Object obj);
	public void deleteContents(Object obj);
	public Object selectContents(Object obj);
	public ArrayList<Object> selectAllContents();
	public ArrayList<Object> searchContents(Object obj);
	public ArrayList<Object> selectAllContents(RowBounds rowBounds); //���̵� ����� �Է��ؼ� �˻�
}
