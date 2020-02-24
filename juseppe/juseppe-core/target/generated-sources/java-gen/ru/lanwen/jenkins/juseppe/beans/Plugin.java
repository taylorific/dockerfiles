
package ru.lanwen.jenkins.juseppe.beans;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;

@Generated("org.jsonschema2pojo")
public class Plugin {

    @Expose
    private String excerpt;
    @Expose
    private String url;
    @Expose
    private String releaseTimestamp;
    @Expose
    private String buildDate;
    @Expose
    private String version;
    @Expose
    private String title;
    @Expose
    private String wiki;
    @Expose
    private String compatibleSinceVersion;
    @Expose
    private String requiredCore;
    @Expose
    private String builtBy;
    @Expose
    private String name;
    @Expose
    private String group;
    @Expose
    private String sha1;
    @Expose
    private String sha512;
    @Expose
    private List<Dependency> dependencies = new ArrayList<Dependency>();
    @Expose
    private List<Developer> developers = new ArrayList<Developer>();

    /**
     * 
     * @return
     *     The excerpt
     */
    public String getExcerpt() {
        return excerpt;
    }

    /**
     * 
     * @param excerpt
     *     The excerpt
     */
    public void setExcerpt(String excerpt) {
        this.excerpt = excerpt;
    }

    public Plugin withExcerpt(String excerpt) {
        this.excerpt = excerpt;
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

    public Plugin withUrl(String url) {
        this.url = url;
        return this;
    }

    /**
     * 
     * @return
     *     The releaseTimestamp
     */
    public String getReleaseTimestamp() {
        return releaseTimestamp;
    }

    /**
     * 
     * @param releaseTimestamp
     *     The releaseTimestamp
     */
    public void setReleaseTimestamp(String releaseTimestamp) {
        this.releaseTimestamp = releaseTimestamp;
    }

    public Plugin withReleaseTimestamp(String releaseTimestamp) {
        this.releaseTimestamp = releaseTimestamp;
        return this;
    }

    /**
     * 
     * @return
     *     The buildDate
     */
    public String getBuildDate() {
        return buildDate;
    }

    /**
     * 
     * @param buildDate
     *     The buildDate
     */
    public void setBuildDate(String buildDate) {
        this.buildDate = buildDate;
    }

    public Plugin withBuildDate(String buildDate) {
        this.buildDate = buildDate;
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

    public Plugin withVersion(String version) {
        this.version = version;
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

    public Plugin withTitle(String title) {
        this.title = title;
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

    public Plugin withWiki(String wiki) {
        this.wiki = wiki;
        return this;
    }

    /**
     * 
     * @return
     *     The compatibleSinceVersion
     */
    public String getCompatibleSinceVersion() {
        return compatibleSinceVersion;
    }

    /**
     * 
     * @param compatibleSinceVersion
     *     The compatibleSinceVersion
     */
    public void setCompatibleSinceVersion(String compatibleSinceVersion) {
        this.compatibleSinceVersion = compatibleSinceVersion;
    }

    public Plugin withCompatibleSinceVersion(String compatibleSinceVersion) {
        this.compatibleSinceVersion = compatibleSinceVersion;
        return this;
    }

    /**
     * 
     * @return
     *     The requiredCore
     */
    public String getRequiredCore() {
        return requiredCore;
    }

    /**
     * 
     * @param requiredCore
     *     The requiredCore
     */
    public void setRequiredCore(String requiredCore) {
        this.requiredCore = requiredCore;
    }

    public Plugin withRequiredCore(String requiredCore) {
        this.requiredCore = requiredCore;
        return this;
    }

    /**
     * 
     * @return
     *     The builtBy
     */
    public String getBuiltBy() {
        return builtBy;
    }

    /**
     * 
     * @param builtBy
     *     The builtBy
     */
    public void setBuiltBy(String builtBy) {
        this.builtBy = builtBy;
    }

    public Plugin withBuiltBy(String builtBy) {
        this.builtBy = builtBy;
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

    public Plugin withName(String name) {
        this.name = name;
        return this;
    }

    /**
     * 
     * @return
     *     The group
     */
    public String getGroup() {
        return group;
    }

    /**
     * 
     * @param group
     *     The group
     */
    public void setGroup(String group) {
        this.group = group;
    }

    public Plugin withGroup(String group) {
        this.group = group;
        return this;
    }

    /**
     * 
     * @return
     *     The sha1
     */
    public String getSha1() {
        return sha1;
    }

    /**
     * 
     * @param sha1
     *     The sha1
     */
    public void setSha1(String sha1) {
        this.sha1 = sha1;
    }

    public Plugin withSha1(String sha1) {
        this.sha1 = sha1;
        return this;
    }

    /**
     * 
     * @return
     *     The sha512
     */
    public String getSha512() {
        return sha512;
    }

    /**
     * 
     * @param sha512
     *     The sha512
     */
    public void setSha512(String sha512) {
        this.sha512 = sha512;
    }

    public Plugin withSha512(String sha512) {
        this.sha512 = sha512;
        return this;
    }

    /**
     * 
     * @return
     *     The dependencies
     */
    public List<Dependency> getDependencies() {
        return dependencies;
    }

    /**
     * 
     * @param dependencies
     *     The dependencies
     */
    public void setDependencies(List<Dependency> dependencies) {
        this.dependencies = dependencies;
    }

    public Plugin withDependencies(List<Dependency> dependencies) {
        this.dependencies = dependencies;
        return this;
    }

    /**
     * 
     * @return
     *     The developers
     */
    public List<Developer> getDevelopers() {
        return developers;
    }

    /**
     * 
     * @param developers
     *     The developers
     */
    public void setDevelopers(List<Developer> developers) {
        this.developers = developers;
    }

    public Plugin withDevelopers(List<Developer> developers) {
        this.developers = developers;
        return this;
    }

}
