package com.uniquegames.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GameVo {
    int id;
    String name = "";
    String game_genre = "";
    String image_path = "";
    String description = "";
    int donation_status;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGame_genre() {
		return game_genre;
	}
	public void setGame_genre(String game_genre) {
		this.game_genre = game_genre;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getDonation_status() {
		return donation_status;
	}
	public void setDonation_status(int donation_status) {
		this.donation_status = donation_status;
	}
}