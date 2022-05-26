package com.entity;


public class Custom {

  private long id;
  private String name;
  private String classify;
  private String info;
  private String img;

  public Custom() {

  }

  public Custom(long id, String name, String classify, String info) {
    this.id = id;
    this.name = name;
    this.classify = classify;
    this.info = info;
  }

  public Custom(long id, String name, String classify, String info, String img) {
    this.id = id;
    this.name = name;
    this.classify = classify;
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


  public String getClassify() {
    return classify;
  }

  public void setClassify(String classify) {
    this.classify = classify;
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
