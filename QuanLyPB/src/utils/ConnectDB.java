package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private static String url = "jdbc:mysql://localhost:3306/quanlypb";
	private static String user = "root";
	private static String password = "0983971677";
	private static Connection conn = null;

	public static Connection getConnection() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("kết nối thành công");
		} catch (Exception e) {
			System.out.println("kết nối thất bại");
			e.printStackTrace();
		}
		return conn;
	}
}
