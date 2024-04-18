package DTO;

import java.util.Date;

/**
 *
 * @author trant
 */
public class Order {
    private int orderId;
    private int userId;
    private String status;
    private Date createDate;
    private int voucherId;
    private int payment_type;
    

    public Order() {
    }

    public Order(int orderId, int userId, String status, Date createDate, int voucherId, int payment_type) {
        this.orderId = orderId;
        this.userId = userId;
        this.status = status;
        this.createDate = createDate;
        this.voucherId = voucherId;
        this.payment_type = payment_type;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public int getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(int payment_type) {
        this.payment_type = payment_type;
    }


}
