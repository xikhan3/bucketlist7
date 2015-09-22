package com.service.mybatis.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

public interface UsersMapper {
	//DAO���� ��� �� �Լ����� �����Ѵ�.
	public void insertUsers(Object obj);
	public void updateUsers(Object obj);
	public void updateUsers2(Object obj);
	public void deleteUsers(Object obj);
	public Object selectUsers(Object obj);
	public ArrayList<Object> selectAllUsers();
	public ArrayList<Object> searchUsers(Object obj);
	public ArrayList<Object> selectAllUsers(RowBounds rowBounds); //���̵� ����� �Է��ؼ� �˻�
}
