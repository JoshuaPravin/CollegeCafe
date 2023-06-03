package com.gjpr.collegecafe.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class CollegeCafeDao implements ICollegeCafeDao{

	private static final Logger LOGGER = LogManager.getLogger(CollegeCafeDao.class);
	private String dbUrl = System.getenv("APPSETTING_PROJECTNAME_dbUrl");
//	private String dbUrl = "jdbc:sqlserver://surabackenddev.database.windows.net:1433;database=surabackenddev;user=SURABackAdmin;password=SURABack@Admin;encrypt=true;trustServerCertificate=true;hostNameInCertificate=*.database.windows.net;loginTimeout=30";

	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection connection = null;
		DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
		Class.forName("com.mysql.jdbc.Driver"); 
		String url = String.format(dbUrl);
		connection = DriverManager.getConnection(url);
		LOGGER.info("db connection successfull");
		return connection; 
	}

}
