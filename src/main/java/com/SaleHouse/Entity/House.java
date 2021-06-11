package com.SaleHouse.Entity;

public class House {
    private Integer hid;
    private String hname;
    private String hsize;
    private String hlocation;
    private String himg;
    private Integer hprice;


    public String getHimg() {
        return himg;
    }

    public void setHimg(String himg) {
        this.himg = himg;
    }


    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHsize() {
        return hsize;
    }

    public void setHsize(String hsize) {
        this.hsize = hsize;
    }

    public String getHlocation() {
        return hlocation;
    }

    public void setHlocation(String hlocation) {
        this.hlocation = hlocation;
    }

    public Integer getHprice() {
        return hprice;
    }

    public void setHprice(Integer hprice) {
        this.hprice = hprice;
    }

    public House() {
    }

    public House(Integer hid, String hname, String hsize, String hlocation, String himg, Integer hprice) {
        this.hid = hid;
        this.hname = hname;
        this.hsize = hsize;
        this.hlocation = hlocation;
        this.himg = himg;
        this.hprice = hprice;
    }

    @Override
    public String toString() {
        return "House{" +
                "hid=" + hid +
                ", hname='" + hname + '\'' +
                ", hsize='" + hsize + '\'' +
                ", hlocation='" + hlocation + '\'' +
                ", himg='" + himg + '\'' +
                ", hprice=" + hprice +
                '}';
    }
}
