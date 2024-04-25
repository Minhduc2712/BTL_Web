
package model;

import java.io.Serializable;

public class Category implements Serializable{
    private String id,idCateP,name;
    private int status;

    public Category() {
    }

    public Category(String id, String idCateP, String name) {
        this.id = id;
        this.idCateP = idCateP;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdCateP() {
        return idCateP;
    }

    public void setIdCateP(String idCateP) {
        this.idCateP = idCateP;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
