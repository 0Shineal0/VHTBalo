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
	private static final String SELECT_BY_ID = "select id,image,name,price,mota from balovht.balo where id =?";
	private static final String SELECT_ALL = "select * from balovht.balo";
	private static final String DELETE = "delete from balovht.balo where id = ?;";
	private static final String UPDATE = "update balovht.balo set image = ?, name = ?,price= ?, mota = ? where id = ?;";
	private static final String INSERT = "insert into balovht.balo(id,image,name,price,mota) value (?, ?, ?, ?, ?) ;";
	
	public static Balo getBalo(String id) {
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(SELECT_BY_ID);
			preparedStatement.setString(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String image = rs.getString("image");
				double price =  rs.getDouble("price");
				String mota = rs.getString("mota");
				return new Balo(id,image,name,price,mota);
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
				String image = rs.getString("image");
				double price =  rs.getDouble("price");
				String mota = rs.getString("mota");
				balos.add(new Balo(id,image, name, price, mota));
			}

			}catch (Exception e) {
				e.printStackTrace();
		}
		return balos;
	}
	
	public static Balo getById(String id) {
	    Balo balo = null;
	    try {
	        Connection conn = DataHelper.getConnection();
	        PreparedStatement stmt = conn.prepareStatement(SELECT_BY_ID);
	        stmt.setString(1, id);
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            String name = rs.getString("name");
	            String image = rs.getString("image");
	            double price = rs.getDouble("price");
	            String mota = rs.getString("mota");
	            balo = new Balo(id, image, name, price, mota);
	        }
	        rs.close();
	        stmt.close();
	        conn.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return balo;
	}

	
	public static boolean create(Balo balo) {
		try {
			Connection conn = DataHelper.getConnection();
			PreparedStatement preparedStatement = conn.prepareStatement(INSERT);
			preparedStatement.setString(1, balo.getId());
			preparedStatement.setString(2, balo.getImage());
			preparedStatement.setString(3, balo.getName());
			preparedStatement.setDouble(4, balo.getPrice());
			preparedStatement.setString(5, balo.getMota());			
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
			preparedStatement.setString(1, balo.getImage());
			preparedStatement.setString(2, balo.getName());
			preparedStatement.setDouble(3, balo.getPrice());
			preparedStatement.setString(4, balo.getMota());			
			preparedStatement.setString(5, balo.getId());
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
