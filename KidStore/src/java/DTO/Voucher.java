package DTO;

import java.util.Date;

/**
 *
 * @author trant
 */
public class Voucher {
    
    private int voucherId;
    private String voucherName;
    private int description;
    private Date dateExpiration;

    public Voucher() {
    }

    public Voucher(int voucherId, String voucherName, int description, Date dateExpiration) {
        this.voucherId = voucherId;
        this.voucherName = voucherName;
        this.description = description;
        this.dateExpiration = dateExpiration;
    }

    public int getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(int voucherId) {
        this.voucherId = voucherId;
    }

    public String getVoucherName() {
        return voucherName;
    }

    public void setVoucherName(String voucherName) {
        this.voucherName = voucherName;
    }

    public int getDescription() {
        return description;
    }

    public void setDescription(int description) {
        this.description = description;
    }

    public Date getDateExpiration() {
        return dateExpiration;
    }

    public void setDateExpiration(Date dateExpiration) {
        this.dateExpiration = dateExpiration;
    }
    
}
