package DTO;

/**
 *
 * @author trant
 */
public class StatusOrder {
    
    private int statusId;
    private String statusName;
    private int orderId;
    private int userId;

    public StatusOrder() {
    }

    public StatusOrder(int statusId, String statusName, int orderId, int userId) {
        this.statusId = statusId;
        this.statusName = statusName;
        this.orderId = orderId;
        this.userId = userId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
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
    
}
