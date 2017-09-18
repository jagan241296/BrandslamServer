/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.brandslam.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class DBHelper {

    //JDBC Drivers Details
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_URL = "jdbc:mysql://localhost:3306/brandslam";

    //MySQL Login Credentials
    public static final String USER = "root";
    public static final String PASS = "root";

    static Connection con = null;

    public static Statement DBConnection() {

        Statement statement = null;
        try {
            //Register JDBC Driver
            Class.forName(JDBC_DRIVER);

            //Creating Connection Object and connecting to MySQL
            con = DriverManager.getConnection(DB_URL, USER, PASS);

            //create a statement object and send it to fire queries
            statement = con.createStatement();
        } catch (Exception e) {

        }
        return statement;
    }

    public static PreparedStatement preparedstmtInstance(String sqlQuery) throws SQLException {

        PreparedStatement ps = null;
        try {
            //Register JDBC Driver
            Class.forName(JDBC_DRIVER);

            //Creating Connection Object and connecting to MySQL
            con = DriverManager.getConnection(DB_URL, USER, PASS);

            //create a preparedstatement instance and return it
            ps = con.prepareStatement(sqlQuery);

        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(DBHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ps;
    }

}
