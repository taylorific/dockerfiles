
package ru.lanwen.jenkins.juseppe.beans;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("org.jsonschema2pojo")
public class Signature {

    @Expose
    private List<String> certificates = new ArrayList<String>();
    @SerializedName("correct_digest")
    @Expose
    private String correctDigest;
    @SerializedName("correct_signature")
    @Expose
    private String correctSignature;
    @Expose
    private String digest;
    @Expose
    private String signature;

    /**
     * 
     * @return
     *     The certificates
     */
    public List<String> getCertificates() {
        return certificates;
    }

    /**
     * 
     * @param certificates
     *     The certificates
     */
    public void setCertificates(List<String> certificates) {
        this.certificates = certificates;
    }

    public Signature withCertificates(List<String> certificates) {
        this.certificates = certificates;
        return this;
    }

    /**
     * 
     * @return
     *     The correctDigest
     */
    public String getCorrectDigest() {
        return correctDigest;
    }

    /**
     * 
     * @param correctDigest
     *     The correct_digest
     */
    public void setCorrectDigest(String correctDigest) {
        this.correctDigest = correctDigest;
    }

    public Signature withCorrectDigest(String correctDigest) {
        this.correctDigest = correctDigest;
        return this;
    }

    /**
     * 
     * @return
     *     The correctSignature
     */
    public String getCorrectSignature() {
        return correctSignature;
    }

    /**
     * 
     * @param correctSignature
     *     The correct_signature
     */
    public void setCorrectSignature(String correctSignature) {
        this.correctSignature = correctSignature;
    }

    public Signature withCorrectSignature(String correctSignature) {
        this.correctSignature = correctSignature;
        return this;
    }

    /**
     * 
     * @return
     *     The digest
     */
    public String getDigest() {
        return digest;
    }

    /**
     * 
     * @param digest
     *     The digest
     */
    public void setDigest(String digest) {
        this.digest = digest;
    }

    public Signature withDigest(String digest) {
        this.digest = digest;
        return this;
    }

    /**
     * 
     * @return
     *     The signature
     */
    public String getSignature() {
        return signature;
    }

    /**
     * 
     * @param signature
     *     The signature
     */
    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Signature withSignature(String signature) {
        this.signature = signature;
        return this;
    }

}
