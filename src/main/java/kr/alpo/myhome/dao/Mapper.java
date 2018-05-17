package kr.alpo.myhome.dao;

import org.apache.ibatis.annotations.Param;

public interface Mapper {

		public String getId(@Param("id") String id);
		public String getPw(@Param("id") String id);
		public String getEmail(@Param("id") String id);
		
		public User getUser(@Param("id") String id);
		
		public void setUser(@Param("name") String name, @Param("id") String id, 
				@Param("pw") String pw, @Param("phone") String phone, 
				@Param("email") String email, @Param("addr") String addr);
		

}
