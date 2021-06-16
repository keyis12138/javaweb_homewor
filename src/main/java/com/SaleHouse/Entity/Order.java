package com.SaleHouse.Entity;


import java.util.Date;

public class Order {
    private Date otime;
    private Integer oid;
    private String oname;
    private Integer uid;
    private Integer hid;
    private Integer price;

    public Date getOtime() {
        return otime;
    }

    public void setOtime(Date otime) {
        this.otime = otime;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Order() {
    }

    public Order(Integer oid, String oname, Integer uid, Integer hid, Integer price, Date otime) {
        this.otime = otime;
        this.oid = oid;
        this.oname = oname;
        this.uid = uid;
        this.hid = hid;
        this.price = price;
    }

    @Override
    public String toString() {
        return "Order{" +
                "otime=" + otime +
                ", oid=" + oid +
                ", oname='" + oname + '\'' +
                ", uid=" + uid +
                ", hid=" + hid +
                ", price=" + price +
                '}';
    }
}
