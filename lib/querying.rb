def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "
    SELECT books.title, books.year 
    FROM books 
    INNER JOIN series 
    ON books.series_id = series.id 
    WHERE series.id = 1
    ORDER BY books.year
    ;
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "
    SELECT characters.name, characters.motto 
    FROM characters 
    ORDER BY length(characters.motto) DESC 
    LIMIT 1
    ;
  "
end

def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "
    SELECT characters.species, COUNT(characters.species) 
    FROM characters 
    GROUP BY characters.species 
    ORDER BY COUNT(characters.species) DESC 
    LIMIT 1
    ;
  "
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "
    SELECT authors.name, subgenres.name 
    FROM authors 
    INNER JOIN series 
    ON authors.id = series.author_id 
    INNER JOIN subgenres 
    ON series.subgenre_id = subgenres.id
    ORDER BY authors.name
    ;  
  "
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "
    SELECT series.title 
    FROM series 
    INNER JOIN authors 
    ON series.author_id = authors.id 
    INNER JOIN characters 
    ON authors.id = characters.author_id 
    WHERE characters.species = 'human' 
    GROUP BY series.title 
    ORDER BY COUNT(*) DESC 
    LIMIT 1 
    ;  
  "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "
    SELECT characters.name, COUNT(*) 
    FROM characters 
    INNER JOIN character_books 
    ON characters.id = character_books.character_id 
    GROUP BY characters.id 
    ORDER BY COUNT(*) DESC, characters.id DESC 
    ;
  "
end