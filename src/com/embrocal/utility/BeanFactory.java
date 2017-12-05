package com.embrocal.utility;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.embrocal.model.AdminBean;

public class BeanFactory {
	public static AdminBean setValues(ResultSet rs, boolean isAdmin) {
		AdminBean ab = new AdminBean();
		
		try {
			rs.next();
			ab.setUsername(rs.getString(1));
			ab.setPassword(rs.getString(2));
			ab.setAdmin(isAdmin);
			
			if (isAdmin) {
				ab.setName(rs.getString(3));
				ab.setPosition(rs.getString(4));
				ab.setAge(rs.getInt(5));
				ab.setContact(rs.getString(6));
			}
		} catch (SQLException sqle) {
			System.out.println("SQLException - setValues: " + sqle.getMessage());
		}
		
		return ab;
	}
}
