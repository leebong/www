package kr.alpo.myhome.dao;

public class User {

		private String name;
		private String id;
		private String pw;
		private String phone;
		private String email;
		private String addr;
		
		//getter & setter 생성
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPw() {
			return pw;
		}
		public void setPw(String pw) {
			this.pw = pw;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getAddr() {
			return addr;
		}
		public void setAddr(String addr) {
			this.addr = addr;
		}
		
		//생성자 생성
		public User(String name, String id, String pw, String phone, String email, 
					String addr) {
			this.setName(name);
			this.setId(id);
			this.setPw(pw);
			this.setPhone(phone);
			this.setEmail(email);
			this.setAddr(addr);
		
		}

	
}
