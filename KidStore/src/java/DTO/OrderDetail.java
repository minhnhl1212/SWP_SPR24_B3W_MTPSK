package DTO;

import java.util.Date;

/**
 *
 * @author trant
 */
public class OrderDetail {
    private int orderId;
    private int userId;
    private int statusId;
    private Date createDate;
    private int voucherId;
    private int cardId;
    private int paymentId;
    private int toyId;

    public OrderDetail() {
    }

    public OrderDetail(int orderId, int userId, int statusId, Date createDate, int voucherId, int cardId, int paymentId, int toyId) {
        this.orderId = orderId;
        this.userId = userId;
        this.statusId = statusId;
        this.createDate = createDate;
        this.voucherId = voucherId;
        this.cardId = cardId;
        this.paymentId = paymentId;
        this.toyId = toyId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(int voucherId) {
        this.voucherId = voucherId;
    }

    public int getCardId() {
        return cardId;
    }

    public void setCardId(int cardId) {
        this.cardId = cardId;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public int getToyId() {
        return toyId;
    }

    public void setToyId(int toyId) {
        this.toyId = toyId;
    }
  
}
