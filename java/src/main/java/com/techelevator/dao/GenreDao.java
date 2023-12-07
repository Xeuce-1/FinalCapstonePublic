package com.techelevator.dao;

import com.techelevator.model.Genre;

public interface GenreDao {
    Genre getGenreById(int id);
    Genre createGenre(String genre_name);
}
