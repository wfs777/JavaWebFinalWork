package com.entity;


public class Scene {

  private long id;
  private String name;
  private String rank;
  private String info;
  private String img;

  public Scene() {
  }

  public Scene(long id, String name, String rank, String info) {
    this.id = id;
    this.name = name;
    this.rank = rank;
    this.info = info;
  }

  public Scene(long id, String name, String rank, String info, String img) {
    this.id = id;
    this.name = name;
    this.rank = rank;
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


  public String getRank() {
    return rank;
  }

  public void setRank(String rank) {
    this.rank = rank;
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
