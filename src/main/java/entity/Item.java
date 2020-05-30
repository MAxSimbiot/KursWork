package entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "z_item")
public class Item implements Serializable{
    @Id
    private int id;
    private String name;
    private String about;
    private int price;
    private String phone;
    private String email;
    private String owner;
    private Date date;
    private String picture;
    private String cat;
    private boolean isTop;

    public Item(int id, String name, String about, int price, String phone, String email, String owner, Date date, String picture, String cat, boolean isTop) {
        this.id = id;
        this.name = name;
        this.about = about;
        this.price = price;
        this.phone = phone;
        this.email = email;
        this.owner = owner;
        this.date = date;
        this.picture = picture;
        this.cat = cat;
        this.isTop = isTop;
    }
    
    public Item() {
    }

    

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
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

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public boolean isIsTop() {
        return isTop;
    }

    public void setIsTop(boolean isTop) {
        this.isTop = isTop;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 89 * hash + this.id;
        hash = 89 * hash + Objects.hashCode(this.name);
        hash = 89 * hash + Objects.hashCode(this.about);
        hash = 89 * hash + this.price;
        hash = 89 * hash + Objects.hashCode(this.phone);
        hash = 89 * hash + Objects.hashCode(this.email);
        hash = 89 * hash + Objects.hashCode(this.owner);
        hash = 89 * hash + Objects.hashCode(this.date);
        hash = 89 * hash + Objects.hashCode(this.picture);
        hash = 89 * hash + Objects.hashCode(this.cat);
        hash = 89 * hash + (this.isTop ? 1 : 0);
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
        final Item other = (Item) obj;
        if (this.id != other.id) {
            return false;
        }
        if (this.price != other.price) {
            return false;
        }
        if (this.isTop != other.isTop) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.about, other.about)) {
            return false;
        }
        if (!Objects.equals(this.phone, other.phone)) {
            return false;
        }
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        if (!Objects.equals(this.owner, other.owner)) {
            return false;
        }
        if (!Objects.equals(this.picture, other.picture)) {
            return false;
        }
        if (!Objects.equals(this.cat, other.cat)) {
            return false;
        }
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", name=" + name + ", about=" + about + ", price=" + price + ", phone=" + phone + ", email=" + email + ", owner=" + owner + ", date=" + date + ", picture=" + picture + ", cat=" + cat + ", isTop=" + isTop + '}';
    }

    
    
}
