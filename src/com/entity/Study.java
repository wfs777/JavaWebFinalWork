package com.entity;


public class Study {

  private long id;
  private String time;
  private String name;
  private long score;
  private double credit;

  public Study(long id, String time, String name, long score, double credit) {
    this.id = id;
    this.time = time;
    this.name = name;
    this.score = score;
    this.credit = credit;
  }


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getTime() {
    return time;
  }

  public void setTime(String time) {
    this.time = time;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public long getScore() {
    return score;
  }

  public void setScore(long score) {
    this.score = score;
  }


  public double getCredit() {
    return credit;
  }

  public void setCredit(double credit) {
    this.credit = credit;
  }

}
