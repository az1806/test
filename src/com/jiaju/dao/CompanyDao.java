package com.jiaju.dao;

import com.jiaju.entity.Company;

public interface CompanyDao {
	
	
	int updateCompany(Company com);
	
	Company queryCompany();
	
//	返回值 方法名（参数类型    参数名，。。。。）

}
