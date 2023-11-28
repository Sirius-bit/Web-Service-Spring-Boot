package it.corso.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import it.corso.dto.FilmDto;
import it.corso.model.Evidenza;
import it.corso.model.Trailer;
import it.corso.service.FilmService;

@RestController
@RequestMapping("/labtv-api/api")
public class FilmController {

	@Autowired
	private FilmService filmService;

	// endpoint #1: mostra tutti i film in evidenza --
	// localhost:8080/labtv-api/api/evidenze
	@GetMapping("/evidenze")
	public ResponseEntity<List<Evidenza>> getFilms() {
		List<Evidenza> response = filmService.getFilm();
		return new ResponseEntity<List<Evidenza>>(response, HttpStatus.OK);
	}

	// endpoint #2: ricerca film tramite titolo --
	// localhost:8080/labtv-api/api/films/titoli/{testo digitato}
	@GetMapping("/films/titoli/{title}")
	public ResponseEntity<FilmDto> getFilmByTitle(@PathVariable("title") String title) {
		FilmDto response = filmService.getFilmByTitle(title);
		return new ResponseEntity<FilmDto>(response, HttpStatus.OK);
	}

	// endpoint #3: play del trailer --
	// localhost:8080/labtv-api/api/trailers/{id film}
	@GetMapping("/trailers/{id}")
	public ResponseEntity<Trailer> getTrailerFilmByID(@PathVariable("id") String id) {
		Trailer response = filmService.getTrailerById(id);
		return new ResponseEntity<Trailer>(response, HttpStatus.OK);
	}

	// endpoint #4: ricerca film tramite id --
	// localhost:8080/labtv-api/api/films/{id}
	@GetMapping("/films/{id}")
	public ResponseEntity<FilmDto> getFilmById(@PathVariable("id") String id) {
		FilmDto response = filmService.getDetailsFilmById(id);
		return new ResponseEntity<FilmDto>(response, HttpStatus.OK);
	}

	// endpoint #5: ricerca film tramite testo --
	// localhost:8080/labtv-api/api/film/titoli/{testo digitato}
	@GetMapping("/film/titoli/{text}")
	public ResponseEntity<List<FilmDto>> getFilmByText(@PathVariable("text") String text) {
		List<FilmDto> response = filmService.getFilmByText(text);
		return new ResponseEntity<List<FilmDto>>(response, HttpStatus.OK);
	}
}