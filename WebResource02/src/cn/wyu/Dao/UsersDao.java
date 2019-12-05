package cn.wyu.Dao;

import cn.wyu.Domain.Users;

public interface UsersDao {
    /**
     * 查询用户，进行登陆
     * @param userName
     * @param password
     * @return
     */
    Users queryByUser(String userName,String password);

}
