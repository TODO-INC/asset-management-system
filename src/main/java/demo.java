import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class demo {
   public static void main(String[] args) {
		 String dburl = "jdbc:mysql://localhost:3306/test";
		 String dbuname = "root";
		 String dbpassword = "password";
      Connection con = null;
      try {
         System.out.println("Connecting to database..............."+dburl);
         con=DriverManager.getConnection(dburl, dbuname, dbpassword);
         System.out.println(con);
         System.out.println("Connection is successful!!!!!!");
      }
      catch(Exception e) {
         e.printStackTrace();
      }
		String sql = "insert into member values(?,?,?,?)";
		String result="Data Entered Successfully";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, "tes1t");
			ps.setString(2, "tes1t");
			ps.setString(3, "tes1t");
			ps.setNString(4, "tes1t");
			ps.executeUpdate();
			System.out.println(result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result="Data Not Entered Successfully";
			e.printStackTrace();
		}
   }
}