
package ru.lanwen.jenkins.juseppe.beans;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Dependency {

    @Expose
    private String name;
    @Expose
    private String version;
    @Expose
    private Boolean optional;

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

    public Dependency withName(String name) {
        this.name = name;
        return this;
    }

    /**
     * 
     * @return
     *     The version
     */
    public String getVersion() {
        return version;
    }

    /**
     * 
     * @param version
     *     The version
     */
    public void setVersion(String version) {
        this.version = version;
    }

    public Dependency withVersion(String version) {
        this.version = version;
        return this;
    }

    /**
     * 
     * @return
     *     The optional
     */
    public Boolean getOptional() {
        return optional;
    }

    /**
     * 
     * @param optional
     *     The optional
     */
    public void setOptional(Boolean optional) {
        this.optional = optional;
    }

    public Dependency withOptional(Boolean optional) {
        this.optional = optional;
        return this;
    }

}
