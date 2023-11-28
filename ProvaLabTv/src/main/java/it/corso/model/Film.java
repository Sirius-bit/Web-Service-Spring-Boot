package it.corso.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "film")
public class Film {

	@Id
	private String id;
	@Column(name = "image")
	private String image;
	@Column(name = "title")
	private String title;
	@Column(name = "plot")
	private String plot;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "star_id", referencedColumnName = "id")
	private Star star;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "director_id", referencedColumnName = "id")
	private Director director;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "genre_id", referencedColumnName = "id")
	private Genre genre;

//	@ManyToMany
//	@JoinTable(name = "similar", joinColumns = @JoinColumn(name = "film_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "similar_film_id"))
//	private List<Film> similar;
//
//	public List<Film> getSimilarFilms() {
//		return similar;
//	}
//
//	public void setSimilarFilms(List<Film> similar) {
//		this.similar = similar;
//	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public Star getStar() {
		return star;
	}

	public void setStar(Star star) {
		this.star = star;
	}

	public Director getDirector() {
		return director;
	}

	public void setDirector(Director director) {
		this.director = director;
	}

	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}

}
