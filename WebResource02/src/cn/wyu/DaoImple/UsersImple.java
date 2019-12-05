package cn.wyu.DaoImple;

import cn.wyu.Dao.UsersDao;
import cn.wyu.Domain.Users;
import cn.wyu.db.PreparedStatementCreator;
import cn.wyu.db.RowCallbackHandler;
import cn.wyu.db.jdbcTemplate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsersImple implements UsersDao {
    @Override
    public Users queryByUser(String userName, String password) {
        List<Users> list = new ArrayList();
        String sql = "select userId,userNo,userName,password,className,isStu,isAdmin from users where userName=? and password=?;";
        jdbcTemplate.query(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
                PreparedStatement preStatement = conn.prepareStatement(sql);
                preStatement.setString(1,userName);
                preStatement.setString(2,password);
                return preStatement;


            }
        }, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet rs) throws SQLException {
                Users user = new Users();
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setClassName(rs.getString("className"));
                user.setUserNo(rs.getString("userNo"));
                user.setIsAdmin(rs.getInt("isAdmin"));
                user.setIsStu(rs.getInt("isStu"));
                user.setUserId(rs.getInt("userId"));
                list.add(user);
            }
        });

        if(list.size()==1){
            return list.get(0);
        }else {
            return null;
        }
    }
}
