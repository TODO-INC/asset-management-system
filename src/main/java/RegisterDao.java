import java.sql.*;
public class RegisterDao {
	static String dburl = "jdbc:mysql://localhost:3306/test";
    static String dbuname = "root";
    static String dbpassword = "password";
    static String dbdriver = "com.mysql.cj.jdbc.Driver";
    static Connection con = null;

    public void loadDriver(String dbDriver) throws ClassNotFoundException {
        Class.forName(dbDriver);
    }

    public static void main(String args[]) {
        try {
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);
            System.out.println(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public String insert_school_id(String id) {
        try {
            loadDriver(dbdriver);
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);
            
            String sql = "insert into school_id values('" + id + "', 0)";
            try {
                Statement statement = con.createStatement();
                int rowsAffected = statement.executeUpdate(sql);
                statement.close();
                
                if (rowsAffected > 0) {
                    return "Data Entered Successfully";
                } else {
                    return "Data Not Entered Successfully";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                return "Data Not Entered Successfully";
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return "Data Not Entered Successfully";
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public String signup(String uname, String password, String id) {
    	try {
            loadDriver(dbdriver);
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);
            
            String sql = "insert into auth values('" + id + "','" + uname + "','" + password + "')";
            String sql2 = "UPDATE school_id SET used=? WHERE idschool_id=?";
            try {
            	PreparedStatement ps = con.prepareStatement(sql2);
                ps.setInt(1, 1);
                ps.setString(2, id);
                Statement statement = con.createStatement();
                int rowsAffected = statement.executeUpdate(sql);
                int rowsAffected2 = ps.executeUpdate();
                statement.close();
                
                if (rowsAffected > 0 && rowsAffected2>0) {
                    return "True";
                } else {
                    return "Data Not Entered Successfully";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                return e.getMessage();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return "Data Not Entered Successfully";
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public String login(String username, String password) throws ClassNotFoundException {
        try {
        	loadDriver(dbdriver);
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);
            String query = "SELECT * FROM auth WHERE username = ? AND password = ?";
            try (PreparedStatement preparedStatement = con.prepareStatement(query)) {
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if( resultSet.next()) {
                    	return "True";
                    }else {
                    	return "False";
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors here
            return e.getMessage();
        }
    }
    public String form(String school_id,String username, String name,String type,String management, String district, String taluka, String address, int building) throws ClassNotFoundException {
    	try {
    		loadDriver(dbdriver);
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);

            PreparedStatement ps = con.prepareStatement("INSERT INTO school_detail (school_id, username, name, type, management, district, taluka, address, building) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, school_id);
            ps.setString(2, username);
            ps.setString(3, name);
            ps.setString(4, type);
            ps.setString(5, management);
            ps.setString(6, district);
            ps.setString(7, taluka);
            ps.setString(8, address);
            ps.setInt(9, building);

            int i = ps.executeUpdate();
            if (i > 0) {
                return "True";
            }else {
            	return "False";
            }

        } catch (Exception e) {
            return e.getMessage();
        }
    }

}
