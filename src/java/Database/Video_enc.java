/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.io.FileInputStream;

/**
 *
 * @author Home
 */
public class Video_enc {
    
    public int video_id;
    FileInputStream salt;
    FileInputStream iv;
    int saltlen;
    int ivlen;

    public int getSaltlen() {
        return saltlen;
    }

    public void setSaltlen(int saltlen) {
        this.saltlen = saltlen;
    }

    public int getIvlen() {
        return ivlen;
    }

    public void setIvlen(int ivlen) {
        this.ivlen = ivlen;
    }

    public int getVideo_id() {
        return video_id;
    }

    public void setVideo_id(int video_id) {
        this.video_id = video_id;
    }

    public FileInputStream getSalt() {
        return salt;
    }

    public void setSalt(FileInputStream salt) {
        this.salt = salt;
    }

    public FileInputStream getIv() {
        return iv;
    }

    public void setIv(FileInputStream iv) {
        this.iv = iv;
    }
    
    
    
}
