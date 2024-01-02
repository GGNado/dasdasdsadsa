INSERT INTO Books (isbn, price, pages, title, storyline) VALUES
("978-1111111111111", 14.99, 280, "L'incanto della luna", "Una storia romantica che si svolge sotto la luce della luna piena."),
("978-2222222222222", 19.99, 320, "Il mistero della cripta", "Un avvincente giallo che si svela nei cunicoli di un'antica cripta."),
("978-3333333333333", 16.99, 240, "L'arte del silenzio", "Un romanzo sull'importanza del silenzio nella frenesia della vita moderna."),
("978-4444444444444", 23.99, 400, "Le ali della libertà", "Un'epica storia di avventura e scoperta ambientata nel cielo aperto."),
("978-5555555555555", 10.99, 180, "Il giardino delle meraviglie", "Un libro per bambini che narra le avventure magiche di un giardino incantato."),
("978-6666666666666", 21.99, 350, "L'ultimo viaggio", "Un romanzo di fantascienza che esplora le frontiere del tempo e dello spazio."),
("978-7777777777777", 17.99, 300, "Il segreto delle stelle", "Una favola che rivela il mistero nascosto dietro le costellazioni."),
("978-8888888888888", 15.99, 260, "Cuori in fuga", "Una storia d'amore appassionante che attraversa continenti e culture diverse."),
("978-9999999999999", 26.99, 420, "La chiave dell'antico tempio", "Un'avventura epica che porta i protagonisti alla ricerca di un antico segreto."),
("978-1010101010101", 13.99, 240, "Il canto del mare", "Un romanzo contemplativo sulla bellezza e la forza misteriosa del mare."),
("978-1212121212121", 18.99, 280, "La danza delle ombre", "Un thriller psicologico che segue le tracce di un oscuro passato."),
("978-1313131313131", 11.99, 200, "Il suono della pioggia", "Una raccolta di poesie che cattura l'essenza romantica di una giornata piovosa."),
("978-1414141414141", 20.99, 340, "Il labirinto delle illusioni", "Un'avventura surreale attraverso un labirinto pieno di illusioni e enigmi."),
("978-1515151515151", 16.99, 280, "La luce oltre il buio", "Un romanzo di crescita personale che affronta le sfide della depressione e della speranza."),
("978-1616161616161", 24.99, 380, "Il respiro del drago", "Un'epica fantasy che segue le gesta di un eroe nel suo viaggio contro un antico drago."),
("978-1717171717171", 14.99, 220, "I segreti del bosco incantato", "Una fiaba magica che si svolge nel cuore di un bosco incantato."),
("978-1818181818181", 19.99, 320, "Il riflesso dell'anima", "Un romanzo introspettivo che esplora la complessità delle relazioni umane."),
("978-1919191919191", 17.99, 300, "La città perduta", "Un'avventura archeologica che porta alla scoperta di una città scomparsa nel deserto."),
("978-2020202020202", 15.99, 260, "L'ombra del destino", "Un thriller che segue le indagini di un detective alle prese con il suo destino oscuro."),
("978-2121212121212", 16.99, 240, "Il segreto della rosa", "Un romance storico ambientato nell'epoca dei castelli e delle corti reali."),
("978-2222222222222", 18.99, 280, "La melodia dell'anima", "Una storia musicale che esplora il potere della musica nel plasmare le vite delle persone."),
("978-2323232323232", 22.99, 360, "Il volo della fenice", "Un'avventura avvincente che segue la traiettoria di una fenice mitica attraverso il cielo."),
("978-2424242424242", 13.99, 200, "Il segreto della biblioteca", "Un mistero che si svela tra i corridoi di una biblioteca antica e polverosa."),
("978-2525252525252", 16.99, 280, "L'arte della guerra interiore", "Un libro di saggezza che esplora le battaglie interiori e la ricerca della pace interiore.");

INSERT INTO Authors (firstname, lastname, isMale, bdate, deathdate, country) VALUES
('Alice', 'Rossi', FALSE, '1975-03-12', NULL, 'ita'),
('David', 'Bianchi', TRUE, '1980-05-22', NULL, 'ita'),
('Sophia', 'Verdi', FALSE, '1968-11-05', '2022-02-15', 'ita'),
('Marco', 'Neri', TRUE, '1972-09-28', NULL, 'ita'),
('Elena', 'Gialli', FALSE, '1985-07-17', NULL, 'ita'),
('Luca', 'Azzurri', TRUE, '1978-12-03', '2020-07-10', 'ita'),
('Isabella', 'Marroni', FALSE, '1990-01-30', NULL, 'ita'),
('Filippo', 'Arancioni', TRUE, '1982-06-14', NULL, 'ita'),
('Giulia', 'Blu', FALSE, '1970-08-19', '2021-04-28', 'ita'),
('Antonio', 'Giallorossi', TRUE, '1974-04-08', NULL, 'ita'),
('Caterina', 'Verdi', FALSE, '1988-03-25', NULL, 'ita'),
('Roberto', 'Viola', TRUE, '1977-10-11', NULL, 'ita'),
('Marta', 'Grigio', FALSE, '1983-09-05', '2023-01-20', 'ita'),
('Stefano', 'Rosa', TRUE, '1979-07-02', NULL, 'ita'),
('Alessia', 'Celesti', FALSE, '1986-12-15', NULL, 'ita'),
('Massimo', 'Magenta', TRUE, '1981-02-09', NULL, 'ita'),
('Camilla', 'Indaco', FALSE, '1976-06-28', '2020-12-07', 'ita'),
('Giovanni', 'Turchesi', TRUE, '1992-04-18', NULL, 'ita'),
('Francesca', 'Ruggine', FALSE, '1973-11-23', NULL, 'ita'),
('Simone', 'Lilla', TRUE, '1984-08-10', NULL, 'ita'),
('Valentina', 'Rame', FALSE, '1989-05-07', '2022-09-14', 'ita'),
('Andrea', 'Malva', TRUE, '1971-01-12', NULL, 'ita'),
('Elisa', 'Ardesia', FALSE, '1987-03-20', NULL, 'ita'),
('Paolo', 'Porpora', TRUE, '1980-09-03', '2021-06-25', 'ita'),
('Chiara', 'Oro', FALSE, '1978-06-07', NULL, 'ita'),
('Davide', 'Avorio', TRUE, '1995-02-28', NULL, 'ita');

INSERT INTO Genres (description) VALUES
('Romanzo romantico'),
('Giallo'),
('Romanzo contemporaneo'),
('Fantasy'),
('Libro per bambini'),
('Fantascienza'),
('Fiaba'),
('Thriller psicologico'),
('Poesia'),
('Libro di crescita personale'),
('Romanzo storico'),
('Libro di avventura'),
('Romanzo introspettivo'),
('Fantasy epico'),
('Fiaba magica'),
('Romanzo musicale'),
('Romanzo fantasy'),
('Romanzo d''amore'),
('Mistero'),
('Fantasy urbano'),
('Libro di saggezza'),
('Poesia romantica'),
('Thriller investigativo'),
('Romance storico'),
('Romanzo contemporaneo'),
('Romanzo musicale'),
('Fantasy avventuroso'),
('Libro di mistero'),
('Saggistica');