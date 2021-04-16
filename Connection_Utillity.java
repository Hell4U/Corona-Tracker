
import com.carleton.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Neel
 */
public class Connection_Utillity {
    private static Connection_Utillity instance =new Connection_Utillity();
                public final String driver="com.mysql.cj.jdbc.Driver";
                public final String url="jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6405344";
                public final String username="sql6405344";
                public final String password="kNClFQPRil";

                private Connection_Utillity(){
                    
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
