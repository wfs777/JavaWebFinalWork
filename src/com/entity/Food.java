package com.entity;


public class Food {

  private long id;
  private String name;
  private String feature;
  private String info;
  private String img;

  public Food() {
  }

  public Food(long id, String name, String feature, String info) {
    this.id = id;
    this.name = name;
    this.feature = feature;
    this.info = info;
  }

  public Food(long id, String name, String feature, String info, String img) {
    this.id = id;
    this.name = name;
    this.feature = feature;
    this.info = info;
    this.img = img;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getFeature() {
    return feature;
  }

  public void setFeature(String feature) {
    this.feature = feature;
  }


  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }


  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

}
