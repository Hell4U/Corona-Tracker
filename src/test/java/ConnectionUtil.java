/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Neel
 */
import java.sql.*;
public class ConnectionUtil {
     private static ConnectionUtil instance =new ConnectionUtil();
                public final String driver="com.mysql.cj.jdbc.Driver";
                public final String url="jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6405344";
                public final String username="sql6405344";
                public final String password="kNClFQPRil";

                private ConnectionUtil(){
                    
                    try {
                            Class.forName(driver);
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                }

                public Connection makeConnection(){
                    Connection con=null;
                    try {
                            con=DriverManager.getConnection(url,username,password);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    
                    return con;
                }

                public static Connection getConnection() {
		return instance.makeConnection();
                }
}
