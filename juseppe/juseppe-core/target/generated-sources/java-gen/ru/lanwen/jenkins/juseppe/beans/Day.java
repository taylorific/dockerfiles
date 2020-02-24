
package ru.lanwen.jenkins.juseppe.beans;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Day {

    @Expose
    private String date;
    @Expose
    private List<Release> releases = new ArrayList<Release>();

    /**
     * 
     * @return
     *     The date
     */
    public String getDate() {
        return date;
    }

    /**
     * 
     * @param date
     *     The date
     */
    public void setDate(String date) {
        this.date = date;
    }

    public Day withDate(String date) {
        this.date = date;
        return this;
    }

    /**
     * 
     * @return
     *     The releases
     */
    public List<Release> getReleases() {
        return releases;
    }

    /**
     * 
     * @param releases
     *     The releases
     */
    public void setReleases(List<Release> releases) {
        this.releases = releases;
    }

    public Day withReleases(List<Release> releases) {
        this.releases = releases;
        return this;
    }

}
