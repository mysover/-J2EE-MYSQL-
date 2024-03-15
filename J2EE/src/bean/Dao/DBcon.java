package bean.Dao;

import java.sql.*;

public class DBcon {
    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
    private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/books?useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=utf-8";
    private static final String DATABASE_USRE = "root";
    private static final String DATABASE_PASSWORD = "123456";

    //返回连接
    public static Connection getConnection(){
        Connection con = null;
        try {
            Class.forName(DRIVER_CLASS);
            con = DriverManager.getConnection(DATABASE_URL,DATABASE_USRE,DATABASE_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    //关闭连接
    public static void closeConnection(Connection con){
        try {
            if (con != null&&(!con.isClosed())){
                con.isClosed();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //关闭结果集
    public static void closeResultSet(ResultSet res){
        try {
            if (res != null) {
                res.close();
                res = null;
            }
        }catch (SQLException e) {
        e.printStackTrace();
        }
    }

    public static void closeStatement(PreparedStatement pStatement){
        try {
            if (pStatement != null){
                pStatement.close();
                pStatement = null;
            }
        } catch (SQLException e) {
        e.printStackTrace();
        }
    }
}
