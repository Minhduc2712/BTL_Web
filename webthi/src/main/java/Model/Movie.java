package Model;

import java.sql.Time;
import java.sql.Timestamp;


public class Movie {

    private Integer id;
    private String name;
    private String director;
    private String actors;
    private Integer categoryId;
    private String content;
    private Integer rate;
    private Time duration;
    private String eposide;
    private Timestamp releaseDate;
    private String image;
    private String teaser;
    private Timestamp createdAt;

    public Movie() {
    	
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public Time getDuration() {
        return duration;
    }

    public void setDuration(Time duration) {
        this.duration = duration;
    }

    public String getEposide() {
        return eposide;
    }

    public void setEposide(String eposide) {
        this.eposide = eposide;
    }

    public Timestamp getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Timestamp releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTeaser() {
        return teaser;
    }

    public void setTeaser(String teaser) {
        this.teaser = teaser;
    }

    public Timestamp getCreated_at() {
        return createdAt;
    }

    public void setCreated_at(Timestamp created_at) {
        this.createdAt = created_at;
    }
}

