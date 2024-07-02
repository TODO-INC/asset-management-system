public class Member 
{
	private String uname,password,id;

	public Member() {
		super();
	}

	public Member(String uname, String password, String id) {
		super();
		this.uname = uname;
		this.password = password;
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
}