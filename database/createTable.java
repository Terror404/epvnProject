package database;
import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;


public class createTable
{
	protected void doPost() throws ServletException, IOException {
		Connection c = null;
	    Statement stmt = null;
	    try {
	      Class.forName("org.sqlite.JDBC");
	      c = DriverManager.getConnection("jdbc:sqlite:database/Database.db");
	      System.out.println("Opened database successfully");

	      stmt = c.createStatement();
	      String sql ="";/*"CREATE TABLE COMPANY102 (ID INT PRIMARY KEY     NOT NULL,NAME           TEXT    NOT NULL,AGE            INT     NOT NULL,ADDRESS        CHAR(50), SALARY         REAL)";*/
	    		  /*"DROP TABLE COMPANY52";*/
	      /*"CREATE TABLE COMPANY " +
	                   "(ID INT PRIMARY KEY     NOT NULL," +
	                   " NAME           TEXT    NOT NULL, " + 
	                   " AGE            INT     NOT NULL, " + 
	                   " ADDRESS        CHAR(50), " + 
	                   " SALARY         REAL)"; */
	      stmt.executeUpdate(sql);
	      stmt.close();
	      c.close();
	    } catch ( Exception e ) {
	      System.err.println( e.getClass().getName() + ": " + e.getMessage() );
	      System.exit(0);
	    }
	    System.out.println("Table created successfully");
	  }
}