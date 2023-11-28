package it.corso.dao;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import it.corso.model.Trailer;

public interface TrailerDao extends CrudRepository<Trailer, Integer> {

	Optional<Trailer> findByFilmId(String filmId);
}
