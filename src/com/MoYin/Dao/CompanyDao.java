package com.MoYin.Dao;

import com.MoYin.Entity.Company;



public interface CompanyDao {

int updateCompany(Company com);
	
	Company queryCompany();

	Company querySQL();
	
}
