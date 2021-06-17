package com.SaleHouse.Entity;

public class HouseInfo {
    private Integer id;
    private String name;
    private Integer price;
    private String wysort;//物业类别
    private String jzsort;//建筑类别
    private String year;//产权年限

    public HouseInfo(){}

    public HouseInfo(Integer id, String name, Integer price, String wysort, String jzsort, String year, String developer, String address, String state, String zxstate, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.wysort = wysort;
        this.jzsort = jzsort;
        this.year = year;
        this.developer = developer;
        this.address = address;
        this.state = state;
        this.zxstate = zxstate;
        this.image = image;
    }

    @Override
    public String toString() {
        return "HouseInfo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", wysort='" + wysort + '\'' +
                ", jzsort='" + jzsort + '\'' +
                ", year='" + year + '\'' +
                ", developer='" + developer + '\'' +
                ", address='" + address + '\'' +
                ", state='" + state + '\'' +
                ", zxstate='" + zxstate + '\'' +
                ", image='" + image + '\'' +
                '}';
    }

    private String developer;//开发商
    private String address;//楼盘地址
    private String state;//销售状况
    private String zxstate;//装修状况
    private String image;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getWysort() {
        return wysort;
    }

    public void setWysort(String wysort) {
        this.wysort = wysort;
    }

    public String getJzsort() {
        return jzsort;
    }

    public void setJzsort(String jzsort) {
        this.jzsort = jzsort;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZxstate() {
        return zxstate;
    }

    public void setZxstate(String zxstate) {
        this.zxstate = zxstate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }



}
