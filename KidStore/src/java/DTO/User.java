/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author admin
 */
public class User {
    private String username, password , lastname;
    private boolean isRole;

    public User() {
    }

    public User(String username, String password, String lastname, boolean isRole) {
        this.username = username;
        this.password = password;
        this.lastname = lastname;
        this.isRole = isRole;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public boolean isIsRole() {
        return isRole;
    }

    public void setIsRole(boolean isRole) {
        this.isRole = isRole;
    }

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", password=" + password + ", lastname=" + lastname + ", isRole=" + isRole + '}';
    }
    
}
