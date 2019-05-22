package com.MoYin.Daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.MoYin.Dao.CompanyDao;
import com.MoYin.Entity.Company;
import com.MoYin.Util.DBManager;



public class CompanyDaoImpl implements  CompanyDao{

	public int updateCompany(Company com) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Company queryCompany() {
		Company com = new Company();
		
		ResultSet rs = DBManager.querySQL("select * from jianjiebiao ;");
		try {
			while (rs.next()){
				com.setJianjieid(rs.getInt(1));
				com.setQiyename(rs.getString(2));
				com.setPhone(rs.getString(11));
				com.setDizhi(rs.getString(12));
				com.setEmail(rs.getString(13));
				System.out.println(com);
			}
			
			System.out.println(com);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return com;
		
		
	}
	public static void main(String[] a){
		

		
			Company com = new Company();
			
			ResultSet rs = DBManager.querySQL("select * from jianjiebiao ;");
			try {
				while (rs.next()){
					com.setJianjieid(rs.getInt(1));
					com.setQiyename(rs.getString(2));
					System.out.println(com);
				}
				
				System.out.println(com);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}

	public Company querySQL() {
		// TODO Auto-generated method stub
		return null;
	}
	}

