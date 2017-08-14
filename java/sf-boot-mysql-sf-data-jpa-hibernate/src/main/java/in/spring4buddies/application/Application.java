package in.spring4buddies.application;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {
		 SpringApplication.run(Application.class, args);

		/*Connection conn = null;

		try {
			String userName = "mydbuser";
			String password = "mydbpassword";

			String url = "jdbc:mysql://54.218.72.223:3306/mydb";
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, userName, password);
			System.out.println("Database connection established");
		} catch (Exception e) {
			System.err.println("Cannot connect to database server");
			System.err.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
					System.out.println("Database Connection Terminated");
				} catch (Exception e) {
				}
			}
		}*/
	}
}
