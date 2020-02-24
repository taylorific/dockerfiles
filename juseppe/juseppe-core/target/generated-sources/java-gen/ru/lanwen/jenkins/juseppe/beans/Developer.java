
package ru.lanwen.jenkins.juseppe.beans;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Developer {

    @Expose
    private String developerId;
    @Expose
    private String email;
    @Expose
    private String name;

    /**
     * 
     * @return
     *     The developerId
     */
    public String getDeveloperId() {
        return developerId;
    }

    /**
     * 
     * @param developerId
     *     The developerId
     */
    public void setDeveloperId(String developerId) {
        this.developerId = developerId;
    }

    public Developer withDeveloperId(String developerId) {
        this.developerId = developerId;
        return this;
    }

    /**
     * 
     * @return
     *     The email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 
     * @param email
     *     The email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    public Developer withEmail(String email) {
        this.email = email;
        return this;
    }

    /**
     * 
     * @return
     *     The name
     */
    public String getName() {
        return name;
    }

    /**
     * 
     * @param name
     *     The name
     */
    public void setName(String name) {
        this.name = name;
    }

    public Developer withName(String name) {
        this.name = name;
        return this;
    }

}
