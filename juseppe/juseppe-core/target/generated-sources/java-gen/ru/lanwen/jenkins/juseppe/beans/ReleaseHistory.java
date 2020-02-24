
package ru.lanwen.jenkins.juseppe.beans;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class ReleaseHistory {

    @Expose
    private List<Day> days = new ArrayList<Day>();

    /**
     * 
     * @return
     *     The days
     */
    public List<Day> getDays() {
        return days;
    }

    /**
     * 
     * @param days
     *     The days
     */
    public void setDays(List<Day> days) {
        this.days = days;
    }

    public ReleaseHistory withDays(List<Day> days) {
        this.days = days;
        return this;
    }

}
