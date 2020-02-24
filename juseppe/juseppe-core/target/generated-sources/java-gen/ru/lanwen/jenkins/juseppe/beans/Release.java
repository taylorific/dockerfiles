
package ru.lanwen.jenkins.juseppe.beans;

import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Release {

    @Expose
    private String gav;
    @Expose
    private String url;
    @Expose
    private String timestamp;
    @Expose
    private String title;
    @Expose
    private String version;
    @Expose
    private String wiki;

    /**
     * 
     * @return
     *     The gav
     */
    public String getGav() {
        return gav;
    }

    /**
     * 
     * @param gav
     *     The gav
     */
    public void setGav(String gav) {
        this.gav = gav;
    }

    public Release withGav(String gav) {
        this.gav = gav;
        return this;
    }

    /**
     * 
     * @return
     *     The url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 
     * @param url
     *     The url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    public Release withUrl(String url) {
        this.url = url;
        return this;
    }

    /**
     * 
     * @return
     *     The timestamp
     */
    public String getTimestamp() {
        return timestamp;
    }

    /**
     * 
     * @param timestamp
     *     The timestamp
     */
    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }

    public Release withTimestamp(String timestamp) {
        this.timestamp = timestamp;
        return this;
    }

    /**
     * 
     * @return
     *     The title
     */
    public String getTitle() {
        return title;
    }

    /**
     * 
     * @param title
     *     The title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    public Release withTitle(String title) {
        this.title = title;
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

    public Release withVersion(String version) {
        this.version = version;
        return this;
    }

    /**
     * 
     * @return
     *     The wiki
     */
    public String getWiki() {
        return wiki;
    }

    /**
     * 
     * @param wiki
     *     The wiki
     */
    public void setWiki(String wiki) {
        this.wiki = wiki;
    }

    public Release withWiki(String wiki) {
        this.wiki = wiki;
        return this;
    }

}
