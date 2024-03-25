package dao;

import java.util.ArrayList;

import model.User;

public class Users {
	
	private static final String SELECT_USER_BY_ID = "select id,name,email,country from balovht.user where id =?";
	private static final String SELECT_ALL_USERS = "select * from balovht.user";
	private static final String DELETE_USERS_SQL = "delete from balovht.user where id = ?;";
	private static final String UPDATE_USERS_SQL = "update balovht.user set name = ?,email= ?, country =? where id = ?;";
	
	private ArrayList<User> users ;
	public User getUser(String email) {
		return null;
	}
	public ArrayList<User> load(){
		return null;
	}
	public boolean update(String email, String pass) {
		return true;
	}

}
