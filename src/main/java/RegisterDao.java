import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	 static String dburl = "jdbc:mysql://localhost:3306/test";
	 static String dbuname = "root";
	 static String dbpassword = "password";
	 static String dbdriver = "com.mysql.cj.jdbc.Driver";
	 static Connection con = null;

	public void loadDriver(String dbDriver)
	{
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String insert_school_id(String id) {
		loadDriver(dbdriver);
		try {
			con=DriverManager.getConnection(dburl, dbuname, dbpassword);
//			System.out.println(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = "insert into school_id values(?,?)";
		String result="Data Entered Successfully";
		 try {
			 PreparedStatement ps = con.prepareStatement(sql);
			 ps.setString(1, id);
			 ps.setLong(2, 0);
			 ps.executeUpdate();
			 System.out.print(result);
			 } catch (SQLException e) {
			// TODO Auto-generated catch block
			result="Data Not Entered Successfully";
			e.printStackTrace();
		}
		return result;

	}
}