package it.corso.model;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "evidenza")
public class Evidenza {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	@Column(name = "rank")
	private double rank;
	@Column(name = "rank_up_down")
	private double rank_up_down;
	@Column(name = "title")
	private String title;
	@Column(name = "full_title")
	private String full_title;
	@Column(name = "year")
	private double year;
	@Column(name = "image")
	private String image;
	@Column(name = "crew")
	private String crew;
	@Column(name = "im_db_rating")
	private String im_db_rating;
	@Column(name = "im_db_rating_count")
	private String im_db_rating_count;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getRank() {
		return rank;
	}

	public void setRank(double rank) {
		this.rank = rank;
	}

	public double getRank_up_down() {
		return rank_up_down;
	}

	public void setRank_up_down(double rank_up_down) {
		this.rank_up_down = rank_up_down;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFull_title() {
		return full_title;
	}

	public void setFull_title(String full_title) {
		this.full_title = full_title;
	}

	public double getYear() {
		return year;
	}

	public void setYear(double year) {
		this.year = year;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCrew() {
		return crew;
	}

	public void setCrew(String crew) {
		this.crew = crew;
	}

	public String getIm_db_rating() {
		return im_db_rating;
	}

	public void setIm_db_rating(String im_db_rating) {
		this.im_db_rating = im_db_rating;
	}

	public String getIm_db_rating_count() {
		return im_db_rating_count;
	}

	public void setIm_db_rating_count(String im_db_rating_count) {
		this.im_db_rating_count = im_db_rating_count;
	}

}
