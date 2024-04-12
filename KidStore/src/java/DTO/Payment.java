package DTO;

/**
 *
 * @author admin
 */
public class Payment {
    private int paymentId;
    private String fullName;
    private String cardId;
    private int userId;

    public Payment() {
    }

    public Payment(int paymentId, String fullName, String cardId, int userId) {
        this.paymentId = paymentId;
        this.fullName = fullName;
        this.cardId = cardId;
        this.userId = userId;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

}
