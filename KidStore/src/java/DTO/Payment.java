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
public class Payment {
    private int id;
    private String credit_card;

    public Payment() {
    }

    public Payment(int id, String credit_card) {
        this.id = id;
        this.credit_card = credit_card;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCredit_card() {
        return credit_card;
    }

    public void setCredit_card(String credit_card) {
        this.credit_card = credit_card;
    }
}
