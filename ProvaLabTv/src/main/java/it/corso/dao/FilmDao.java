package it.corso.dao;

import java.util.List;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import it.corso.model.Film;
import it.corso.model.Genre;

public interface FilmDao extends CrudRepository<Film, String> {

	Film findByTitle (String title);
	Optional<Film> findById(String id);
	List<Film> findByTitleContaining(String title);
	List<Film> findByGenre(Genre genre);

}
