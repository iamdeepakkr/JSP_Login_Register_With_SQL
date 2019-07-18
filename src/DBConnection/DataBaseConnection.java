package DBConnection;
import java.sql.*;

public class DataBaseConnection {
	public static Connection getConnection() {
		try {
			  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			  Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=JSPLOGINREGISTERWITHSQL;user=sa;password=password;");
			  return con;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
			return null;
		}
	}

}
