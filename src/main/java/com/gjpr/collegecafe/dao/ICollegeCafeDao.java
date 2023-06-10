package com.gjpr.collegecafe.dao;

import java.util.List;

import com.gjpr.collegecafe.model.Food;

public interface ICollegeCafeDao {

	List<Food> getBreakFastList() throws Exception;

	List<Food> getLunchList() throws Exception;

	List<Food> getSnacksList() throws Exception;


}
