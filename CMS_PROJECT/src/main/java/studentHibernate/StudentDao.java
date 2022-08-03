package studentHibernate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class StudentDao {
	
	public static int register(Student u) {
		int i = 0;

		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();

		SessionFactory factory = meta.getSessionFactoryBuilder().build();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		i = (Integer) session.save(u);

		t.commit();
		session.close();

		return i;

	}
	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	} 
	
	public static int update(Student std){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"update addstudent set stname=?,staddress=?,stdepartment=?,gender=?,stphone=?,stemail=?,stpassword=? where id=?");  
	        ps.setString(1,std.getStname());
	        ps.setString(2,std.getStaddress());
	        ps.setString(3,std.getStdepartment());
	        ps.setString(4,std.getGender());
	        ps.setString(5,std.getStphone());
	        ps.setString(6,std.getStemail());
	        ps.setString(7,std.getStpassword());
	        ps.setInt(8,std.getId());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
	public static int delete(String std){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("delete from addstudent where id=?");  
	        ps.setInt(1,Integer.parseInt(std));
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	  
	    return status;  
	}  
	public static List<Student> getAllRecords(){  
	    List<Student> list=new ArrayList<Student>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from addstudent");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Student emp=new Student();
	        	emp.setId(rs.getInt("id"));
	        	emp.setStname(rs.getString("stname"));
	        	emp.setStaddress(rs.getString("staddress"));
	        	emp.setStdepartment(rs.getString("stdepartment"));
	        	emp.setGender(rs.getString("gender"));
	        	emp.setStphone(rs.getString("stphone"));
	        	emp.setStemail(rs.getString("stemail"));
	        	emp.setStpassword(rs.getString("stpassword"));
	            list.add(emp);
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}  
	public static Student getRecordById(int id){  
		Student std=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from addstudent where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            std=new Student();
	            std.setId(rs.getInt("id"));
	        	std.setStname(rs.getString("stname"));
	        	std.setStaddress(rs.getString("staddress"));
	        	std.setStdepartment(rs.getString("stdepartment"));
	        	std.setGender(rs.getString("gender"));
	        	std.setStphone(rs.getString("stphone"));
	        	std.setStemail(rs.getString("stemail"));
	        	std.setStpassword(rs.getString("stpassword"));
	             
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return std;  
	} 
}
