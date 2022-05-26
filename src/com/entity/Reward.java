package com.entity;


public class Reward {

  private long id;
  private String name;
  private String level;

  public Reward() {
  }

  public Reward(long id, String name, String level) {
    this.id = id;
    this.name = name;
    this.level = level;
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


  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }

}
