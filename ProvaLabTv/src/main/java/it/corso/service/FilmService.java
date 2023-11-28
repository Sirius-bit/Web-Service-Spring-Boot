package it.corso.service;
import java.util.List;

import it.corso.dto.FilmDto;
import it.corso.model.Evidenza;
import it.corso.model.Trailer;

public interface FilmService {
	List<Evidenza> getFilm();
	FilmDto getFilmByTitle(String title);
	List<FilmDto> getFilmByText(String title);
	FilmDto getDetailsFilmById(String id);
	Trailer getTrailerById(String id);
}
