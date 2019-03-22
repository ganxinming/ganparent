package cn.gan.pojo;

import java.util.List;
import java.util.Map;

public class UserCustom {
    private User user;
    private List<User> userList;
    private Map<String ,String > maps;
    public Map<String, String> getMaps() {
        return maps;
    }

    public void setMaps(Map<String, String> maps) {
        this.maps = maps;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    @Override
    public String toString() {
        return "UserCustom{" +
                "user=" + user +
                ", userList=" + userList +
                ", maps=" + maps +
                '}';
    }

}
