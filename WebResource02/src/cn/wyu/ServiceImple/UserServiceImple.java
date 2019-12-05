package cn.wyu.ServiceImple;

import cn.wyu.Dao.UsersDao;
import cn.wyu.DaoImple.UsersImple;
import cn.wyu.Domain.Users;
import cn.wyu.Service.UserService;

public class UserServiceImple implements UserService {
    @Override
    public boolean login(Users user) {
        UsersDao usersDao = new UsersImple();
        Users dbuser = usersDao.queryByUser(user.getUserName(),user.getPassword());
        if(dbuser.getPassword().equals(user.getPassword()) && dbuser.getUserName().equals(user.getUserName())) {
            user.setClassName(dbuser.getClassName());
            user.setUserId(dbuser.getUserId());
            user.setIsStu(dbuser.getIsStu());
            user.setIsAdmin(dbuser.getIsAdmin());
            user.setUserNo(dbuser.getUserNo());
            return true;
        }else {
            return false;
        }

    }
}
