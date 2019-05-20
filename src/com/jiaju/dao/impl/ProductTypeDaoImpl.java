package com.jiaju.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jiaju.dao.ProductTypeDao;
import com.jiaju.entity.ProductType;
import com.util.DBManager;

public class ProductTypeDaoImpl implements ProductTypeDao {

	public List<ProductType> queryProductTypes() {
		List<ProductType> pts = new ArrayList<ProductType>();
		ResultSet rs = DBManager.querySQL("select * from producttype ;");
		try {
			while (rs.next()) {
				ProductType pt = new ProductType();

				pt.setId(rs.getInt(1));
				pt.setName(rs.getString(2));
				pts.add(pt);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pts;
	}

}
