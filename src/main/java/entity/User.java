package entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "z_user")
public class User implements Serializable{
    @Id
    private int id;
    private String login;
    private String pass;
    private String phone;
    private String email;
    private String city;
    private int account;
    private Date date;
    private String mess;

    public User() {
    }

    public User(int id, String login, String pass, String phone, String email, String city, int account, Date date, String mess) {
        this.id = id;
        this.login = login;
        this.pass = pass;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.account = account;
        this.date = date;
        this.mess = mess;
    }

    public String getMess() {
        return mess;
    }

    public void setMess(String mess) {
        this.mess = mess;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", login=" + login + ", pass=" + pass + ", phone=" + phone + ", email=" + email + ", city=" + city + ", account=" + account + ", date=" + date + ", mess=" + mess + '}';
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 73 * hash + this.id;
        hash = 73 * hash + Objects.hashCode(this.login);
        hash = 73 * hash + Objects.hashCode(this.pass);
        hash = 73 * hash + Objects.hashCode(this.phone);
        hash = 73 * hash + Objects.hashCode(this.email);
        hash = 73 * hash + Objects.hashCode(this.city);
        hash = 73 * hash + this.account;
        hash = 73 * hash + Objects.hashCode(this.date);
        hash = 73 * hash + Objects.hashCode(this.mess);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final User other = (User) obj;
        if (this.id != other.id) {
            return false;
        }
        if (this.account != other.account) {
            return false;
        }
        if (!Objects.equals(this.login, other.login)) {
            return false;
        }
        if (!Objects.equals(this.pass, other.pass)) {
            return false;
        }
        if (!Objects.equals(this.phone, other.phone)) {
            return false;
        }
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        if (!Objects.equals(this.city, other.city)) {
            return false;
        }
        if (!Objects.equals(this.mess, other.mess)) {
            return false;
        }
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }
    
}
