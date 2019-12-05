package cn.wyu.db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBHelp {
    static Properties info = new Properties();
    static {
        //获得属性文件输入流
        InputStream in = DBHelp.class.getClassLoader().getResourceAsStream("config.properties");

        //从属性文件读取到变量info
        try {
            info.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(info.getProperty("driver"));
        Connection connection = DriverManager.getConnection(info.getProperty("url"),info);
        return connection;
    }
}