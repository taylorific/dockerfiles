
package ru.lanwen.jenkins.juseppe.beans;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class UpdateSite {

    @Expose
    private Integer updateCenterVersion;
    @Expose
    private String id;
    @Expose
    private List<Plugin> plugins = new ArrayList<Plugin>();
    @Expose
    private Signature signature;

    /**
     * 
     * @return
     *     The updateCenterVersion
     */
    public Integer getUpdateCenterVersion() {
        return updateCenterVersion;
    }

    /**
     * 
     * @param updateCenterVersion
     *     The updateCenterVersion
     */
    public void setUpdateCenterVersion(Integer updateCenterVersion) {
        this.updateCenterVersion = updateCenterVersion;
    }

    public UpdateSite withUpdateCenterVersion(Integer updateCenterVersion) {
        this.updateCenterVersion = updateCenterVersion;
        return this;
    }

    /**
     * 
     * @return
     *     The id
     */
    public String getId() {
        return id;
    }

    /**
     * 
     * @param id
     *     The id
     */
    public void setId(String id) {
        this.id = id;
    }

    public UpdateSite withId(String id) {
        this.id = id;
        return this;
    }

    /**
     * 
     * @return
     *     The plugins
     */
    public List<Plugin> getPlugins() {
        return plugins;
    }

    /**
     * 
     * @param plugins
     *     The plugins
     */
    public void setPlugins(List<Plugin> plugins) {
        this.plugins = plugins;
    }

    public UpdateSite withPlugins(List<Plugin> plugins) {
        this.plugins = plugins;
        return this;
    }

    /**
     * 
     * @return
     *     The signature
     */
    public Signature getSignature() {
        return signature;
    }

    /**
     * 
     * @param signature
     *     The signature
     */
    public void setSignature(Signature signature) {
        this.signature = signature;
    }

    public UpdateSite withSignature(Signature signature) {
        this.signature = signature;
        return this;
    }

}
