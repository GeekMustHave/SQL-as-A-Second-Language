/*
=== createDatabase - Script to create Teradata tables and load data into them
   
==== TOPICS

* This is a Teradata specific command
* It is assumed that the database to hold these objects and data has already been created
* There are no references to the database name in this script
It is assumed you are in the proper database when running this script
   
==== TIPS

* Change the database name from `chinook` to the database you are interested in 

*/


/*****************************
ALBUM   ALBUM    ALBUM
******************************/

CREATE SET TABLE Chinook.Album ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      AlbumId INTEGER NOT NULL,
      AlbumTitle VARCHAR(160) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      ArtistId INTEGER NOT NULL, 
UNIQUE PRIMARY KEY ( AlbumId ))
INDEX ( ArtistId );

INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Knocking at Your Back Door: The Best Of Deep Purple in the 80''s',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Every Kind of Light',200);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mendelssohn: A Midsummer Night''s Dream',256);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Jorge Ben Jor 25 Anos',46);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Dark Side Of The Moon',120);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Van Halen',152);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Into The Light',55);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Great Recordings of the Century - Mahler: Das Lied von der Erde',240);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Motley Crue Greatest Hits',109);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Killers',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Serie Sem Limite (Disc 2)',145);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Beethoven: Symhonies Nos. 5 & 6',218);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chemical Wedding',14);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Greatest Hits',100);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('In Your Honor [Disc 2]',84);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Muso Ko',198);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Monteverdi: L''Orfeo',273);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Are You Experienced?',94);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Rotten Apples: Greatest Hits',131);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Sibelius: Finlandia',237);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Deep Purple In Rock',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Fear Of The Dark',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Beethoven: Symphony No. 6 ''Pastoral'' Etc.',254);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Ace Of Spades',106);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Ten',118);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Black Sabbath Vol. 4 (Remaster)',12);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Diver Down',152);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mozart: Wind Concertos',216);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Heart of the Night',53);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A TempestadeTempestade Ou O Livro Dos Dias',99);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('My Generation - The Very Best Of The Who',144);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('LOST, Season 4',149);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Deixa Entrar',83);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Frank',252);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Respighi:Pines of Rome',226);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Return Of The Space Cowboy',92);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('O Samba Poconé',130);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Pearl Jam',118);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cássia Eller - Sem Limite [Disc 1]',77);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chopin: Piano Concertos Nos. 1 & 2',235);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Zooropa',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Milton Nascimento Ao Vivo',42);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Greatest Hits II',51);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Alcohol Fueled Brewtality Live! [Disc 2]',11);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Brave New World',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The World of Classical Favourites',214);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Tangents',143);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Song Remains The Same (Disc 1)',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('King For A Day Fool For A Lifetime',82);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mozart: Symphonies Nos. 40 & 41',248);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Great Recordings of the Century - Shubert: Schwanengesang, 4 Lieder',270);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Beast Live',117);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Santana Live',59);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chill: Brazil (Disc 2)',6);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Radio Brasil (O Som da Jovem Vanguarda) - Seleccao de Henrique Amaro',36);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Scheherazade',233);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chronicle, Vol. 2',76);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('...And Justice For All',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Emergency On Planet Earth',92);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of Billy Cobham',10);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of 1980-1990',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Great Recordings of the Century: Paganini''s 24 Caprices',268);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A Real Dead One',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Physical Graffiti [Disc 2]',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('No Security',142);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Retrospective I (1974-1980)',128);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: The Cello Suites',212);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vozes do MPB',21);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Album Of The Year',82);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('SCRIABIN: Vers la flamme',250);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('20th Century Masters - The Millennium Collection: The Best of Scorpions',179);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Walking Into Clarksdale',115);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Virtual XI',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Carnaval 2001',21);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Pop',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: Toccata & Fugue in D Minor',231);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Blue Moods',89);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Ride The Lightning',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: Violin Concertos',210);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Police Greatest Hits',141);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Cream Of Clapton',81);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Out Of Exile',8);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Led Zeppelin II',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Szymanowski: Piano Works, Vol. 1',266);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Instant Karma: The Amnesty International Campaign to Save Darfur',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('By The Way',127);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Number of The Beast',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Up An'' Atom',69);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('B-Sides 1980-1990',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Grieg: Peer Gynt Suites & Sibelius: Pelléas et Mélisande',248);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Carmina Burana',229);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('No More Tears (Remastered)',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Use Your Illusion I',88);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('BBC Sessions [Disc 1] [Live]',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Master Of Puppets',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Pure Cult: The Best Of The Cult (For Rockers, Ravers, Lovers & Sinners) [UK]',139);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Pachelbel: Canon & Gigue',208);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Plays Metallica By Four Cellos',7);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('IV',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Djavan Ao Vivo - Vol. 1',80);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Battlestar Galactica (Classic), Season 1',158);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('J.S. Bach: Chaconne, Suite in E Minor, Partita in E Major & Prelude, Fugue and Allegro',265);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('English Renaissance',247);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Raul Seixas',126);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Seventh Son of a Seventh Son',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Essential Miles Davis [Disc 2]',68);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Pavarotti''s Opera Made Easy',227);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Blizzard of Ozz',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Kill ''Em All',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Achtung Baby',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Facelift',5);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Na Pista',20);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Adorate Deum: Gregorian Chant from the Proper of the Mass',206);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('American Idiot',54);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Houses Of The Holy',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Singles',138);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Berlioz: Symphonie Fantastique',245);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Outbreak',79);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Rock In Rio [CD1]',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Purcell: Music for the Queen Mary',263);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Arquivo Os Paralamas Do Sucesso',113);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of R.E.M.: The IRS Years',124);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Acústico MTV [Live]',19);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Office, Season 3',156);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Puccini: Madama Butterfly - Highlights',225);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best of Ed Motta',37);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Black Album',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Lost, Season 1',149);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Big Ones',3);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Quanta Gente Veio ver--Bônus De Carnaval',27);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Carry On',205);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live [Disc 1]',137);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Purcell: The Fairy Queen',261);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Battle Rages On',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('BBC Sessions [Disc 2] [Live]',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Office, Season 1',156);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Green',124);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Sambas De Enredo 2001',21);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Prokofiev: Romeo & Juliet',245);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Piece Of Mind',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Acústico MTV',113);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Heroes, Season 1',148);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Afrociberdelia',18);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('As Canções de Eu Tu Eles',27);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Tchaikovsky: The Nutcracker',223);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mezmerize',135);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Seek And Shall Find: More Of The Best (1963-1981)',104);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best of Beethoven',203);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Restless and Wild',2);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Slaves And Masters',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('South American Getaway',259);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Living After Midnight',98);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('News Of The World',51);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vinicius De Moraes',72);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('MK III The Final Concerts [Disc 1]',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live At Donington 1992 (Disc 2)',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Tchaikovsky: 1812 Festival Overture, Op.49, Capriccio Italien & Beethoven: Wellington''s Victory',243);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Battlestar Galactica: The Story So Far',147);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Compositores',111);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Wagner: Favourite Overtures',221);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Sozinho Remix Ao Vivo',16);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('My Way: The Best Of Frank Sinatra [Disc 1]',85);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Misplaced Childhood',102);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Duos II',201);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('In Step',133);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Jota Quest-1995',96);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('For Those About To Rock We Salute You',1);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Van Halen III',152);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Machine Head',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live After Death',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: Orchestral Suites Nos. 1 - 4',257);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A Soprano Inspired',219);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Os Cães Ladram Mas A Caravana Não Pára',121);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('One By One',84);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Meus Momentos',56);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Lulu Santos - RCA 100 Anos De Música - Álbum 01',101);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Elgar: Cello Concerto & Vaughan Williams: Fantasias',241);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Realize',199);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('From The Muddy Banks Of The Wishkah [Live]',110);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Surfing with the Alien (Remastered)',95);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Acústico',146);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of Van Halen, Vol. I',152);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of Buddy Guy - The Millenium Collection',15);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Beethoven Piano Sonatas: Moonlight & Pastorale',238);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mozart: Chamber Music',274);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Iron Maiden',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A-Sides',132);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Demorou...',108);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Fireball',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Haydn: Symphonies 99 - 104',217);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bartok: Violin & Viola Concertos',255);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mais Do Mesmo',99);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vs.',118);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Quiet Songs',197);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('International Superhits',54);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Get Born',93);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Serie Sem Limite (Disc 1)',145);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mascagni: Cavalleria Rusticana',236);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Body Count',13);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Minas',42);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('In Your Honor [Disc 1]',84);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Black Sabbath',12);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Schubert: The Late String Quartets & String Quintet (3 CD''s)',272);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Sir Neville Marriner: A Celebration',215);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Judas 0: B-Sides and Rarities',131);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Song Remains The Same (Disc 2)',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Come Taste The Band',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Back to Black',252);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Carried to Dust (Bonus Track Version)',253);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Synkronized',92);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Riot Act',118);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live On Two Legs [Live]',118);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('UB40 The Best Of - Volume Two [UK]',151);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Garage Inc. (Disc 1)',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Greatest Kiss',52);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: The Brandenburg Concertos',234);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Dance Of Death',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Miles Ahead',68);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Transmission',143);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Alcohol Fueled Brewtality Live! [Disc 1]',11);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Real Thing',82);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Handel: The Messiah (Highlights)',213);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Locatelli: Concertos for Violin, Strings and Continuo, Vol. 3',271);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Liszt - 12 Études D''Execution Transcendante',269);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Maquinarama',130);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Presence',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cake: B-Sides and Rarities',196);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Santana - As Years Go By',59);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cássia Eller - Coleção Sem Limite [Disc 2]',77);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Armada: Music from the Courts of England and Spain',251);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('War',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Original Soundtracks 1',116);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A Real Live One',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chill: Brazil (Disc 1)',24);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Voodoo Lounge',142);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Prokofiev: Symphony No.1',232);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Angel Dust',82);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('St. Anger',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('House of Pain',180);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('BackBeat Soundtrack',9);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Chronicle, Vol. 1',76);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Nielsen: The Six Symphonies',267);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Sex Machine',91);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Californication',127);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Rattle And Hum',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vinícius De Moraes - Sem Limite',70);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A Matter of Life and Death',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Mozart Gala: Famous Arias',249);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Hot Rocks, 1964-1971 (Disc 1)',142);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Tribute',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bach: Goldberg Variations',211);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bongo Fury',23);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Unplugged',81);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('ReLoad',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Led Zeppelin III',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Doors',140);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Speak of the Devil',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Audioslave',8);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The X Factor',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Elis Regina-Minha História',41);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('How To Dismantle An Atomic Bomb',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Prokofiev: Symphony No.5 & Stravinksy: Le Sacre Du Printemps',248);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('A Copland Celebration, Vol. I',230);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Blood Sugar Sex Magik',127);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Use Your Illusion II',88);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Final Concerts (Disc 2)',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vivaldi: The Four Seasons',209);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Handel: Music for the Royal Fireworks (Original Version 1749)',208);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Led Zeppelin I',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Diary of a Madman (Remastered)',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Aquaman',159);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('All That You Can''t Leave Behind',150);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Somewhere in Time',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Axé Bahia 2001',21);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Great Performances - Barber''s Adagio and Other Romantic Favorites for Strings',228);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Beyond Good And Evil',139);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Appetite for Destruction',88);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Djavan Ao Vivo - Vol. 02',80);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Load',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Weill: The Seven Deadly Sins',264);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Warner 25 Anos',6);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cesta Básica',125);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Allegri: Miserere',207);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Essential Miles Davis [Disc 1]',68);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('In Through The Out Door',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Lost, Season 2',149);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Un-Led-Ed',157);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cidade Negra - Hits',19);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bizet: Carmen Highlights',246);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Faceless',87);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Rock In Rio [CD2]',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live [Disc 2]',137);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Bark at the Moon (Remastered)',114);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Vault: Def Leppard''s Greatest Hits',78);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Holst: The Planets, Op. 32 & Vaughan Williams: Fantasies',226);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Ultimate Relexation Album',262);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Garage Inc. (Disc 2)',50);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('New Adventures In Hi-Fi',124);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Jagged Little Pill',4);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Office, Season 2',156);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Revelations',8);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Supernatural',59);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Coda',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Powerslave',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Strauss: Waltzes',226);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Lost, Season 3',149);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Arquivo II',113);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Quanta Gente Veio Ver (Live)',27);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Da Lama Ao Caos',18);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('[1997] Black Light Syndrome',136);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Last Night of the Proms',224);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Temple of the Dog',204);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Best Of Men At Work',105);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Stormbringer',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Let There Be Rock',1);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Ao Vivo [IMPORT]',155);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Górecki: Symphony No. 3',260);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('No Prayer For The Dying',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Unplugged [Live]',52);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Battlestar Galactica, Season 3',147);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Out Of Time',122);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Roda De Funk',86);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Physical Graffiti [Disc 1]',22);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Worlds',202);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Palestrina: Missa Papae Marcelli & Allegri: Miserere',244);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Purpendicular',58);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Olodum',112);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Cafezinho',97);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Minha Historia',17);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Contraband',153);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Fauré: Requiem, Ravel: Pavane & Others',222);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Live At Donington 1992 (Disc 1)',90);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Barulhinho Bom',103);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Volume Dois',146);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Core',134);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Great Opera Choruses',220);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Balls to the Wall',2);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('The Colour And The Shape',84);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Charpentier: Divertissements, Airs & Concerts',258);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Lulu Santos - RCA 100 Anos De Música - Álbum 02',101);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Greatest Hits I',51);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Minha História',57);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Adams, John: The Chairman Dances',242);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Nevermind',110);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Prenda Minha',16);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Koyaanisqatsi (Soundtrack from the Motion Picture)',275);
INSERT INTO "Album" ("AlbumTitle","ArtistId") VALUES ('Morning Dance',53);


/*********************************************
ARTIST     ARTIST    ARTIST
**********************************************/
CREATE SET TABLE Chinook.Artist ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ArtistId INTEGER NOT NULL,
      Name VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC, 
UNIQUE PRIMARY KEY ( ArtistId ));



/*******************************************
CUSTOMER     CUSTOMER      CUSTOMER
********************************************/
CREATE SET TABLE Chinook.Customer ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CustomerId INTEGER NOT NULL,
      FirstName VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      LastName VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      Company VARCHAR(80) CHARACTER SET LATIN NOT CASESPECIFIC,
      Address VARCHAR(70) CHARACTER SET LATIN NOT CASESPECIFIC,
      City VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      State VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      Country VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC,
      PostalCode VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC,
      Phone VARCHAR(24) CHARACTER SET LATIN NOT CASESPECIFIC,
      Fax VARCHAR(24) CHARACTER SET LATIN NOT CASESPECIFIC,
      Email VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC NOT NULL,
      SupportRepId INTEGER, 
UNIQUE PRIMARY KEY ( CustomerId ))
INDEX ( SupportRepId );
