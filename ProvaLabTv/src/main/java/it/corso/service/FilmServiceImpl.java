package it.corso.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import it.corso.dao.EvidenzaDao;
import it.corso.dao.FilmDao;
import it.corso.dao.TrailerDao;
import it.corso.dto.FilmDto;
import it.corso.dto.SimilarDto;
import it.corso.model.Evidenza;
import it.corso.model.Film;
import it.corso.model.Trailer;

@Service
public class FilmServiceImpl implements FilmService {

	@Autowired
	private EvidenzaDao evidenzaDao;

	@Autowired
	private FilmDao filmDao;

	@Autowired
	private TrailerDao trailerDao;

	@Override
	public List<Evidenza> getFilm() {
		return (List<Evidenza>) evidenzaDao.findAll();
	}

	@Override
	public FilmDto getFilmByTitle(String title) {
		Film film = filmDao.findByTitle(title);
		if (film == null) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Film non trovato");
		}
		FilmDto filmDto = new FilmDto();
		convertToFilmDto(film, filmDto);
		List<Film> similarFilms = findSimilarFilms(film);
		filmDto.setSimilar(convertToSimilarDtoList(similarFilms));
		return filmDto;
	}

	@Override
	public List<FilmDto> getFilmByText(String title) {
		List<Film> films = filmDao.findByTitleContaining(title);
		System.out.println(films);
		if (films.isEmpty()) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Film non trovati");
		}
		List<FilmDto> listFilmDto = convertToListFilmDto(films);

		for (FilmDto film : listFilmDto) {
			List<Film> similarFilms = findSimilarFilmsForFilm(film);
			film.setSimilar(convertToSimilarDtoList(similarFilms));
		}
		return listFilmDto;
	}

	public List<Film> findSimilarFilmsForFilm(FilmDto film) {
		List<Film> similarFilms = new ArrayList<>();

		if (film.getGenre() != null) {
			similarFilms = filmDao.findByGenre(film.getGenre());
			similarFilms.removeIf(f -> f.getId().equals(film.getId()));
		}
		return similarFilms;
	}

	public List<FilmDto> convertToListFilmDto(List<Film> films) {
		List<FilmDto> filmsDtoList = new ArrayList<>();
		for (Film film : films) {
			FilmDto filmDto = new FilmDto();
			filmDto.setId(film.getId());
			filmDto.setImage(film.getImage());
			filmDto.setTitle(film.getTitle());
			filmDto.setPlot(film.getPlot());
			filmDto.setStar(film.getStar());
			filmDto.setDirector(film.getDirector());
			filmDto.setGenre(film.getGenre());
			filmsDtoList.add(filmDto);
		}
		return filmsDtoList;
	}

	@Override
	public FilmDto getDetailsFilmById(String id) {
		Optional<Film> film = filmDao.findById(id);
		if (!film.isPresent()) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Film non trovato");
		}
		FilmDto filmDto = new FilmDto();
		convertToOptionalFilmDto(film, filmDto);
		List<Film> similarFilms = findSimilarFilmsToOptionalFilm(film);
		filmDto.setSimilar(convertToSimilarDtoList(similarFilms));
		return filmDto;
	}

	public List<Film> findSimilarFilms(Film film) {
		List<Film> similarFilms = new ArrayList<>();

		if (film.getGenre() != null) {
			similarFilms = filmDao.findByGenre(film.getGenre());
			similarFilms.removeIf(f -> f.getId().equals(film.getId()));
		}
		return similarFilms;
	}

	public List<Film> findSimilarFilmsToOptionalFilm(Optional<Film> film) {
		List<Film> similarFilms = new ArrayList<>();

		if (film.get().getGenre() != null) {
			similarFilms = filmDao.findByGenre(film.get().getGenre());
			similarFilms.removeIf(f -> f.getId().equals(film.get().getId()));
		}
		return similarFilms;
	}

	public List<SimilarDto> convertToSimilarDtoList(List<Film> films) {
		List<SimilarDto> similarDtoList = new ArrayList<>();

		for (Film film : films) {
			SimilarDto similarDto = new SimilarDto();
			similarDto.setId(film.getId());
			similarDto.setImage(film.getImage());
			similarDto.setTitle(film.getTitle());
			similarDto.setPlot(film.getPlot());
			similarDto.setStar(film.getStar());
			similarDto.setDirector(film.getDirector());
			similarDto.setGenre(film.getGenre());
			similarDtoList.add(similarDto);
		}
		return similarDtoList;
	}

	public FilmDto convertToFilmDto(Film film, FilmDto filmDto) {
		filmDto.setId(film.getId());
		filmDto.setImage(film.getImage());
		filmDto.setTitle(film.getTitle());
		filmDto.setPlot(film.getPlot());
		filmDto.setStar(film.getStar());
		filmDto.setDirector(film.getDirector());
		filmDto.setGenre(film.getGenre());
		return filmDto;
	}

	public FilmDto convertToOptionalFilmDto(Optional<Film> film, FilmDto filmDto) {
		filmDto.setId(film.get().getId());
		filmDto.setImage(film.get().getImage());
		filmDto.setTitle(film.get().getTitle());
		filmDto.setPlot(film.get().getPlot());
		filmDto.setStar(film.get().getStar());
		filmDto.setDirector(film.get().getDirector());
		filmDto.setGenre(film.get().getGenre());
		return filmDto;
	}

	@Override
	public Trailer getTrailerById(String id) {
		Optional<Film> film = filmDao.findById(id);
		if (film.isPresent()) {
			Optional<Trailer> trailer = trailerDao.findByFilmId(film.get().getId());
			if (trailer.isPresent()) {
				return trailer.get();
			} else {
				throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Trailer non trovato");
			}
		} else {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Film non trovato");
		}
	}
}
