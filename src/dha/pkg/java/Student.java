package dha.pkg.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Student {
	public ResultSet getStudList() {
		Connection con=null;  

        try
         {
        	Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","");
          
           String query="Select id,fname,lname,SSN from patientregister where id=" +1;

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);

            return rs;
         }
       catch(Exception e) 
        {
          System.out.println(e);
          return null;
        }
	}

	public ResultSet getStudInfo(int id) {
		   Connection con=null;  

	        try
	         {
	        	Class.forName("com.mysql.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","");
	          
	           String query="Select * from patientregister where id=" + id;

	            Statement stmt=con.createStatement();
	            ResultSet rs=stmt.executeQuery(query);

	            return rs;
	         }
	       catch(Exception e) 
	        {
	          System.out.println(e);
	          return null;
	        }
	}

	public void updateStud(int id, String fname, String lname, int ssn) {
		Connection con=null;  

        try
         {
        	Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb", "root","");
          
           String query="Update patientregister set fname='" + fname + "', lname='" + lname + "', SSN=" + ssn + " where id=" + id;

            Statement stmt=con.createStatement();
            stmt.executeUpdate(query);

            stmt.close();
            con.close();
         }
       catch(Exception e) 
        {
          System.out.println(e);
        }
		
	}

}
