package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Balo;
import utils.DataHelper;

public class Balos {
	private static final String SELECT_BY_ID = "select id,image,name,price,describe from balovht.balo where id =?";
	private static final String SELECT_ALL = "select * from balovht.balo";
	private static final String DELETE = "delete from balovht.balo where id = ?;";
	private static final String UPDATE = "update balovht.balo set name = ?,price= ?,image = ?,describe = ? where id = ?;";
	private static final String INSERT = "insert into balovht.balo(id,image,name,price,describe) value (?, ?, ?, ?, ?) ;";
	
	public static Balo getBalo(String id) {
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(SELECT_BY_ID);
			preparedStatement.setString(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				double price =  rs.getDouble("price");
				String image = rs.getString("image");
				String describe = rs.getString("describe");
				return new Balo(id,image,name,price,describe);
			}

			}catch (Exception e) {
				
				e.printStackTrace();
		}
		return new Balo();
	}
	
	public static List<Balo> getAll() {
		List<Balo> balos = new ArrayList<>();
		try {
			Connection conn = DataHelper.getConnection();
			Statement stmt = null;
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(SELECT_ALL);
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				double price =  rs.getDouble("price");
				String image = rs.getString("image");
				String describe = rs.getString("describe");
				balos.add(new Balo(id,image,name,price,describe));
			}

			}catch (Exception e) {
				e.printStackTrace();
		}
		return balos;
	}

	public static boolean create(Balo balo) {
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(INSERT);
			preparedStatement.setString(1, balo.getId());
			preparedStatement.setString(2, balo.getName());
			preparedStatement.setDouble(3, balo.getPrice());
			preparedStatement.setString(4, balo.getImage());
			preparedStatement.setString(5, balo.getDescribe());
			String sql = preparedStatement.toString();
			return preparedStatement.execute();
			
			}catch (Exception e) {
				
				e.printStackTrace();
				return false;
		}
		
	}
	public static boolean update(Balo balo) {
		
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(UPDATE);
			preparedStatement.setString(1, balo.getName());
			preparedStatement.setDouble(2, balo.getPrice());
			preparedStatement.setString(3, balo.getId());
			preparedStatement.setString(4, balo.getImage());
			preparedStatement.setString(5, balo.getDescribe());
			String sql = preparedStatement.toString();
			return preparedStatement.execute();
			
			}catch (Exception e) {
				
				e.printStackTrace();
				return false;
		}
	}
	
	public static boolean delete(Balo balo) {
	    try {
	        Connection conn = DataHelper.getConnection();
	        PreparedStatement preparedStatement = conn.prepareStatement(DELETE);
	        preparedStatement.setString(1, balo.getId());
	        return preparedStatement.execute();
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}

	
	public static boolean save(Balo balo) {
		try {
			if( isExist(balo))
				return update(balo);
			else
				return create(balo);
		}catch (Exception e) {
			return false;
		} 
		
	}
	public static boolean isExist(Balo balo) {
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(SELECT_BY_ID);
			preparedStatement.setString(1, balo.getId());
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				return true;
			}

			}catch (Exception e) {
				e.printStackTrace();
		}
		return false;
	}
}
