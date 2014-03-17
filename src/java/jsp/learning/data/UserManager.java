package jsp.learning.data;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by A-6077 on 3/13/14.
 */
public class UserManager {

    private  List<UserData> users =  new ArrayList<UserData>();

    private static UserManager userManagerObj =  new UserManager();

    private UserManager() {

    }

    public static UserManager getUsersInstance (){

        return userManagerObj;
    }

    public  List<UserData> getUsers() {
        return users;
    }

    public  boolean registerUser(UserData user){

        return users.add(user);
    }

    public  void update(UserData user){

        UserData newUserData = users.get(users.indexOf(user));

        newUserData.setAge(user.getAge());
        newUserData.setUserName(user.getUserName());
        newUserData.setEmail(user.getEmail());
        newUserData.setMobile(user.getMobile());
    }
}
