package com.gjpr.collegecafe.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.gjpr.collegecafe.model.Food;

public class CollegeCafeDao implements ICollegeCafeDao{

	private static final Logger LOGGER = LogManager.getLogger(CollegeCafeDao.class);
	private String dbUrl = System.getenv("APPSETTING_PROJECTNAME_dbUrl");

	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection connection = null;
		DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
		Class.forName("com.mysql.jdbc.Driver"); 
		String url = String.format(dbUrl);
		connection = DriverManager.getConnection(url);
		LOGGER.info("db connection successfull");
		return connection; 
	}

	@Override
	public List<Food> getBreakFastList() throws Exception {
		// TODO Auto-generated method stub
		List<Food> breakfastList = new ArrayList<Food>();
		for(int i=1;i<=5;i++)
		{
			Food food = new Food("B"+i, "Breakfast "+i, "Breakfast Description"+i, "40", "0");
			breakfastList.add(food);
		}
		return breakfastList;
	}

	@Override
	public List<Food> getLunchList() throws Exception {
		// TODO Auto-generated method stub
		List<Food> lunchList = new ArrayList<Food>();
		for(int i=1;i<=5;i++)
		{
			Food food = new Food("L"+i, "Lunch "+i, "Lunch Description"+i, "40", "0");
			lunchList.add(food);
		}
		return lunchList;
	}

	@Override
	public List<Food> getSnacksList() throws Exception {
		// TODO Auto-generated method stub
		List<Food> snacksList = new ArrayList<Food>();
		for(int i=1;i<=5;i++)
		{
			Food food = new Food("S"+i, "Snacks "+i, "Snacks Description"+i, "40", "0");
			snacksList.add(food);
		}
		return snacksList;
	}

}
