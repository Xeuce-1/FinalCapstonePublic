BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


--BANDS DATA
INSERT INTO bands (manager_id, bandname, description, cover_image_url)
VALUES  (1, 'The Pixies', 'The Pixies are an American alternative rock band formed in 1986 in Boston, Massachusetts. Until 2013, the band consisted of Black Francis, Joey Santiago, Kim Deal and David Lovering. They disbanded acrimoniously in 1993 but reunited in 2004.', 'https://www.billboard.com/wp-content/uploads/media/pixies-1992-portrait-billboard-1548.jpg')
        ,(1, 'Fallout Boy', 'Fall Out Boy is an American rock band formed in Wilmette, Illinois, a suburb of Chicago, in 2001. The band consists of lead vocalist and rhythm guitarist Patrick Stump, bassist Pete Wentz, drummer Andy Hurley, and lead guitarist Joe Trohman.', 'https://media.pitchfork.com/photos/63d930e793bd6d85eaa50339/2:1/w_1920,c_limit/Fall-Out-Boy.jpg')
        ,(1, 'Sublime', 'Sublime was an American rock band from Long Beach, California, formed in 1988.[1] The band''s line-up, consistent throughout its duration, consisted of Bradley Nowell (vocals and guitar), Eric Wilson (bass), and Bud Gaugh (drums).', 'https://neonmusic.online/wp-content/uploads/2023/11/JEG6TWN4YOKLT65IH4G3HCTIOQ.jpg')
        ,(1, 'Boston', 'Boston is an American rock band formed in 1975 by Tom Scholz in Boston, Massachusetts, that experienced significant commercial success during the 1970s and 1980s. The band''s core members include multi-instrumentalist, founder and leader Scholz, who played the majority of instruments on the band''s 1976 self-titled debut album, and former lead vocalist Brad Delp, among a number of other musicians who varied from album to album.', 'https://www.liveabout.com/thmb/dvt15OrsUeQDNhXeJjJEuKpz8CM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/boston-performing-in-long-island--new-york-482579942-ea8b3a2784ec4a638c840f2532ca28b4.jpg')
        ,(1, 'The Talking Heads', 'Talking Heads were an American rock band that formed in 1975 in New York City. The band was composed of David Byrne (lead vocals, guitar), Chris Frantz (drums), Tina Weymouth (bass) and Jerry Harrison (keyboards, guitar). Described as ''one of the most critically acclaimed bands of the ''80s,'' Talking Heads helped to pioneer new wave music by combining elements of punk, art rock, funk, and world music with an anxious, clean-cut image.', 'https://faroutmagazine.co.uk/static/uploads/1/2023/07/Talking-Heads-1985-Far-Out-Magazine-F-1140x855.jpg')
        ,(1, 'Modest Mouse', 'Modest Mouse is an American rock band formed in 1993 in Issaquah, Washington, and currently based in Portland, Oregon. The founding members were lead singer/guitarist Isaac Brock, drummer Jeremiah Green and bassist Eric Judy. Strongly influenced by Pavement, Pixies, XTC, and Talking Heads.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Modest_Mouse_Pittsburgh_2021.jpg/1920px-Modest_Mouse_Pittsburgh_2021.jpg')
        ,(1, 'The Cranberries', 'The Cranberries were an Irish rock band formed in Limerick, Ireland. Originally named the Cranberry Saw Us, the band was formed in 1989 by lead singer Niall Quinn, guitarist Noel Hogan, bassist Mike Hogan, and drummer Fergal Lawler. Quinn was replaced as lead singer by Dolores O''Riordan in 1990, and the group changed their name to the Cranberries. The band classified themselves as an alternative rock group, but incorporated aspects of indie rock, jangle pop, dream pop, folk rock, post-punk and pop rock into their sound.','https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Cranberries_Live_In_BCN_10_4_2012.JPG/1920px-Cranberries_Live_In_BCN_10_4_2012.JPG')
        ,(1, 'The Cure', 'The Cure are an English rock band formed in 1978 in Crawley, West Sussex. Throughout numerous lineup changes since the band''s formation, guitarist, lead vocalist, and songwriter Robert Smith has remained the only constant member, though bassist Simon Gallup has been present for all but about three years of the band''s history. Their debut album, Three Imaginary Boys (1979), along with several early singles, placed the band at the forefront of the emerging post-punk and new wave movements that had sprung up in the United Kingdom. Beginning with their second album, Seventeen Seconds (1980), the band adopted a new, increasingly dark and tormented style, which, together with Smith''s stage look, had a strong influence on the emerging genre of gothic rock as well as the subculture that eventually formed around the genre.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/The_Cure_Live_in_Singapore_2-_1st_August_2007.jpg/1280px-The_Cure_Live_in_Singapore_2-_1st_August_2007.jpg')
        ,(1, 'Joy Division', 'Joy Division were an English rock band formed in Salford in 1976. The group consisted of vocalist, guitarist and lyricist Ian Curtis, guitarist/keyboardist Bernard Sumner, bassist Peter Hook and drummer Stephen Morris.', 'https://americansongwriter.com/wp-content/uploads/2023/01/Joy-Division-GettyImages-84864991.jpg?fit=2000%2C800')
        ,(1, 'Gorillaz', 'Gorillaz are an English virtual band created in 1998 by musician Damon Albarn and artist Jamie Hewlett, from London. The band primarily consists of four fictional members: 2-D (vocals, keyboards), Murdoc Niccals (bass guitar), Noodle (guitar, keyboards, vocals) and Russel Hobbs (drums). Their universe is presented in media such as music videos, interviews, comic strips and short cartoons. Gorillaz''s music has featured collaborations with a wide range of featured artists, with Albarn as the only permanent musical contributor.', 'https://www.ticketfairy.com/word/wp-content/uploads/2023/06/Gorillaz-scaled.jpg')
        ,(1, 'Daft Punk', 'Daft Punk were a French electronic music duo formed in 1993 in Paris by Thomas Bangalter and Guy-Manuel de Homem-Christo. They achieved early popularity in the late 1990s as part of the French house movement, combining elements of house music with funk, disco, techno, rock and synth-pop. The duo garnered further critical acclaim and worldwide commercial success in the years following, to now be regarded as one of the most influential acts in dance music history.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Daft_Punk_in_2013.jpg/1280px-Daft_Punk_in_2013.jpg')
        ,(1, 'N.W.A', 'N.W.A was an American hip hop group formed in Compton, California. They were among the earliest and most significant popularizers and controversial figures of the gangsta rap subgenre, and the group is widely considered one of the greatest and most influential groups in the history of hip hop music.', 'https://miro.medium.com/v2/resize:fit:1358/1*_gvvBMq11ugUwoaeZI-FCA.jpeg')
        ,(1, 'Wu Tang Clan', 'Wu-Tang Clan is an American hip hop collective formed in Staten Island, New York City, in 1992. Its members include RZA, GZA, Method Man, Raekwon, Ghostface Killah, Inspectah Deck, U-God, Masta Killa, and, until his death in 2004, Ol'' Dirty Bastard. Close affiliate Cappadonna later became an official member.', 'https://www.rollingstone.com/wp-content/uploads/2023/12/wu-tang-vegas.jpg?w=1581&h=1054&crop=1')
        ,(1, 'Pink Floyd', 'Pink Floyd are an English rock band formed in London in 1965. Gaining an early following as one of the first British psychedelic groups, they were distinguished by their extended compositions, sonic experimentation, philosophical lyrics and elaborate live shows. They became a leading band of the progressive rock genre, cited by some as the greatest progressive rock band of all time.', 'https://d2hivyizz80siy.cloudfront.net/assets/Image/9224.jpg')
        ,(1, 'Lake Street Dive', 'Lake Street Dive is an American multi-genre band that was formed in 2004 at the New England Conservatory of Music in Boston. The band''s founding members are Rachael Price, Mike ''McDuck'' Olson, Bridget Kearney, and Mike Calabrese.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Lake_Street_Dive_live_2017_%28cropped%29.jpg/1920px-Lake_Street_Dive_live_2017_%28cropped%29.jpg')
        ,(1, 'Hans Zimmer', 'Hans Florian Zimmer is a German film score composer and music producer. He has won two Oscars and four Grammys, and has been nominated for three Emmys and a Tony. Zimmer was also named on the list of Top 100 Living Geniuses, published by The Daily Telegraph in 2007.', 'https://www.hollywoodreporter.com/wp-content/uploads/2017/04/hans_zimmer_-_publicity_-_h_2017.jpg')
        ,(1, 'Tom Petty', 'Thomas Earl Petty was an American singer, songwriter, and guitarist. He was the leader of the rock bands Tom Petty and the Heartbreakers and Mudcrutch and a member of the late 1980s supergroup the Traveling Wilburys. He was also a successful solo artist.', 'https://media.vanityfair.com/photos/59d293ab7d55873555a7650d/master/pass/tom-petty-hospital.jpg')
        ,(1, 'Green Day', 'Green Day is an American rock band formed in the East Bay of California in 1987 by lead vocalist and guitarist Billie Joe Armstrong, together with bassist and backing vocalist Mike Dirnt.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Green_Day_-_Hella_Mega_Tour_-_August_10%2C_2021.jpg/1200px-Green_Day_-_Hella_Mega_Tour_-_August_10%2C_2021.jpg')
        ,(1, 'David Bowie', 'David Robert Jones, known professionally as David Bowie, was an English singer, songwriter, musician, and actor. A leading figure in the music industry, he is regarded as one of the most influential musicians of the 20th century.', 'https://ichef.bbci.co.uk/images/ic/1200x675/p0bcd2lc.jpg');

--GALLERY
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Modest Mouse
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.nme.com/wp-content/uploads/2019/03/GettyImages-1055015804.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://media2.houstonpress.com/hou/imager/u/slideshow/12082556/modestmouse_10082021_htx_voletaalvarez_1306.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://ewscripps.brightspotcdn.com/dims4/default/beecc1b/2147483647/strip/true/crop/4923x2769+0+514/resize/1280x720!/quality/90/?url=http%3A%2F%2Fewscripps-brightspot.s3.amazonaws.com%2F68%2F3b%2F495dda2f488db104148cfa5af80f%2Fap21214011592393.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.nme.com/wp-content/uploads/2022/03/modest-mouse-live.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.theamp.com/assets/img/modestmouse_eventimage-c893d6fe58.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.usatoday.com/gcdn/-mm-/bcf73afd1590f77160e5baf0ee4853b18f0ba0d2/c=166-649-2137-1763/local/-/media/2015/03/17/USATODAY/USATODAY/635621872768363048--images-uploads-gallery-ModestMouse-BenMoon-gloweyes-064-optionA-RGB.jpg?width=660&height=374&fit=crop&format=pjpg&auto=webp')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://i.etsystatic.com/5813643/r/il/c7ce7d/3683199726/il_570xN.3683199726_4ax3.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.nme.com/wp-content/uploads/2019/03/GettyImages-1055015804.jpg');

--Lake Street Dive
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://www.millerauditorium.com/sites/default/files/styles/square_large/public/images/lake_street_dive_1080_0.png?h=57024e64&itok=d9_mhtRk')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://www.nonesuch.com/sites/g/files/g2000014771/files/2022-07/lake-street-dive-rachael-vilray-2022-tours-2021-1129-1200x628.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://pbs.twimg.com/media/GBFVX1qWYAE-xwG?format=jpg&name=large')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://variety.com/wp-content/uploads/2021/02/lake-street-also-nice-e1612978123766.png');

--Sublime
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://media.redbullmusicacademy.com/assets/R-4041722-1353281684-6560.jpeg.af05ceec.jpg?auto=format&w=800')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.thrashermagazine.com//mediaV2/k2/items/cache/5b36f508dfbbde14957b3d594eaf7fec_L.jpg?t=1465580067')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.austinchronicle.com/binary/1f2b/music_feature1-6.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.offbeat.com/wp-content/uploads/2012/03/mar-12-news-sublime.jpg');

--The Pixies
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), '')
--,((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), '')

--Fallout Boy
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://www.altpress.com/wp-content/uploads/2023/06/22/attachment-Collage-Maker-22-Jun-2023-11-10-AM-789-1052x592.jpg?t=1689163026')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://falloutboy.com/wp-content/uploads/2023/01/fob-share-card.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8oWurzVtkYPvjNaf2_-XY3vGE6zmeKYN5dw&usqp=CAU')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://i.ebayimg.com/images/g/RyMAAOSwBWZgTPmF/s-l1200.webp')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://nypost.com/wp-content/uploads/sites/2/2021/08/fall-out-boy-cancel-covid-01.jpg?quality=75&strip=all');

--Boston
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--The Talking Heads
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--The Cranberries
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--The Cure
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Joy Division
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Gorillaz
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Daft Punk
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--N.W.A
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Wu Tang Clan
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Pink Floyd
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')



--INSERT INTO gallery (band_id, image_url)
--        VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Hans Zimmer
--Tom Petty
--Green Day
--David Bowie




--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = "Modest Mouse")
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Modest Mouse')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie Rock'));


INSERT INTO genres(genre_name) VALUES ('Indie Rock');
INSERT INTO genres(genre_name) VALUES ('Alternative Rock');
INSERT INTO genres(genre_name) VALUES ('Alternative');
INSERT INTO genres(genre_name) VALUES ('Indie');
INSERT INTO genres(genre_name) VALUES ('R&B');
INSERT INTO genres(genre_name) VALUES ('Soul');
INSERT INTO genres(genre_name) VALUES ('Pop Rock');
INSERT INTO genres(genre_name) VALUES ('Pop');
INSERT INTO genres(genre_name) VALUES ('Emo Pop');

--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie'));
--
--
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Sublime')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'R&B'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Sublime')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Soul'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop Rock'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Emo Pop'));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock'));



-- NOTIFICATIONS TABLE
--INSERT INTO notifications(subject, band_id, send_date, message)
--VALUES
--	('Brace yourselves, the quiet is over!', 12, NOW(), 'Hey Mouseketeers! We''re thrilled to announce that new music is on the horizon!  Expect fresh sounds, unexpected twists, and the classic Modest Mouse energy you know and love. Stay tuned for more details soon!')
--	,('Get your dancing shoes ready!', 12, NOW(), 'We''re hitting the road again, and this time we''re bringing the party to your town!  Get ready for a night of unforgettable music, singalongs, and good vibes.  Tickets go on sale on [Date]! Don''t miss out!');
--
COMMIT TRANSACTION;
