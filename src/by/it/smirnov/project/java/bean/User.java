package by.it.smirnov.project.java.bean;

import org.apache.commons.codec.digest.DigestUtils;

import java.util.List;

/**
 * Created by aleksey.smirnov on 01.05.2017.
 */
public class User extends AbstractBaseClass {
	private String name;
    private String login;
    private String password;
    private List<String> listRoles;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = DigestUtils.md5Hex(password);
    }

    public List<String> getListRoles() {
        return listRoles;
    }

    public void setListRoles(List<String> listRoles) {
        this.listRoles = listRoles;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (getId() != user.getId()) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (login != null ? !login.equals(user.login) : user.login != null) return false;
        return password != null ? password.equals(user.password) : user.password == null;
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (login != null ? login.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }

    public User(int id, String name, String login, String password, List<String> listRoles) {
        setId(id);
        this.name = name;
        this.login = login;
        this.password = password;
        this.listRoles = listRoles;
    }

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + getId() +
                ", name='" + name + "'" +
                ", login='" + login + "'" +
                ", password='" + password + "'" +
                ", roles='" + listRoles + "'" +
                "}";
    }
}
