package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_Connection {
    private DB_Connection(){}

    static DB_Connection instance;

    public static synchronized DB_Connection getInstance(){
        if(instance==null){
            instance= new DB_Connection();
        }
        return instance;
    }

    public Connection getConnection(){
        Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(MySQL_URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Exception when getConnection");
            e.printStackTrace();
        }
        return conn;
    }

    private final String  MySQL_URL = "jdbc:mysql://localhost:3306/module333";
    private final String USERNAME = "root";
    private final String PASSWORD = "123456";

}
