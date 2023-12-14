BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username, password_hash,role) VALUES ('ryan@gmail.com','$2a$10$Q8fR2HQYd93YI.3Mq/U6t.eZNhyBIiHoDqAT1.yogeqHp2mJSY8PK', 'ROLE_USER');
INSERT INTO users (username, password_hash,role) VALUES ('patrick.dennis@gmail.com','$2a$10$K/nzFXexdKobZJVUFr3ceuIFk4OkscP7YTxUjR7SApCL/LgGF01I6', 'ROLE_USER');
INSERT INTO users (username, password_hash,role) VALUES ('peter.nocholas@gmail.com','$2a$10$abr/1m05bY8EzZRWsVhJueTFhlqzgeISw.6or8fm4riAVAdlSM.aC', 'ROLE_USER');
INSERT INTO users (username, password_hash,role) VALUES ('maddy@gmail.com','$2a$10$WewgYc60q3BdiHEbgycC.evrIfdNk5Hxc8j.ux05aGZuYHwji5iwi', 'ROLE_USER');


-- GENRES DATA
INSERT INTO genres (genre_name) VALUES ('Rock');
INSERT INTO genres (genre_name) VALUES ('Pop');
INSERT INTO genres (genre_name) VALUES ('Hip Hop');
INSERT INTO genres (genre_name) VALUES ('Jazz');
INSERT INTO genres (genre_name) VALUES ('Country');
INSERT INTO genres (genre_name) VALUES ('Blues');
INSERT INTO genres (genre_name) VALUES ('Electronic');
INSERT INTO genres (genre_name) VALUES ('Rhythm and Blues');
INSERT INTO genres (genre_name) VALUES ('Reggae');
INSERT INTO genres (genre_name) VALUES ('Folk');
INSERT INTO genres (genre_name) VALUES ('Classical');
INSERT INTO genres (genre_name) VALUES ('Metal');
INSERT INTO genres (genre_name) VALUES ('Punk');
INSERT INTO genres (genre_name) VALUES ('Indie');
INSERT INTO genres (genre_name) VALUES ('Funk');
INSERT INTO genres (genre_name) VALUES ('Soul');
INSERT INTO genres (genre_name) VALUES ('Disco');
INSERT INTO genres (genre_name) VALUES ('Alternative');
INSERT INTO genres (genre_name) VALUES ('Rap');
INSERT INTO genres (genre_name) VALUES ('Techno');
INSERT INTO genres (genre_name) VALUES ('Gospel');
INSERT INTO genres (genre_name) VALUES ('Bluegrass');
INSERT INTO genres (genre_name) VALUES ('Ska');
INSERT INTO genres (genre_name) VALUES ('EDM');
INSERT INTO genres (genre_name) VALUES ('Ambient');
INSERT INTO genres (genre_name) VALUES ('Indie Rock');
INSERT INTO genres (genre_name) VALUES ('Alternative Rock');
INSERT INTO genres (genre_name) VALUES ('Pop Rock');
INSERT INTO genres (genre_name) VALUES ('Emo Pop');
INSERT INTO genres (genre_name) VALUES ('Pop Punk');
INSERT INTO genres (genre_name) VALUES ('New Wave');
INSERT INTO genres (genre_name) VALUES ('Gothic Rock');
INSERT INTO genres (genre_name) VALUES ('Post-Punk');
INSERT INTO genres (genre_name) VALUES ('Alternative Hip Hop');
INSERT INTO genres (genre_name) VALUES ('Progressive Rock');
INSERT INTO genres (genre_name) VALUES ('Classic Rock');
INSERT INTO genres (genre_name) VALUES ('Film Score');
INSERT INTO genres (genre_name) VALUES ('Punk Rock');

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

--The Pixies (1)
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), 'https://media.cnn.com/api/v1/images/stellar/prod/130917120358-pixies.jpg?q=x_88,y_32,h_2278,w_4050,c_crop/h_720,w_1280')
,((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), 'https://rockandrollglobe.com/wp-content/uploads/2019/04/pixies-1989-ghostcultmag.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), 'https://freight.cargo.site/t/original/i/944ea56b55c37d162528e48cf17e58659d53217938388ebbad6b8972fc66b5bf/PIXIES_EUTour22.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), 'https://www.limitedruns.com/media/cache/15/49/1549270f2a62830deae3c75365c04a33.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Exciting News - Exclusive Merchandise Drop!', 1, '3/8/2023', 'Hey Pixies Fans! Get ready for something special. We''re dropping exclusive merchandise just for you. Limited stock, so don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Live Stream Alert - Unplugged Session Tomorrow!', 1, '6/5/2022', 'Hey Pixies family! Join us tomorrow for a special acoustic live stream session. Grab your snacks, kick back, and enjoy some intimate vibes with The Pixies.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Appreciation Day - Exclusive Playlist Inside!', 1, '9/6/2022', 'To our amazing fans, today is all about you! Check out the exclusive fan appreciation playlist we''ve created just for you. Thanks for rocking with us! ');
insert into notifications (subject, band_id, send_date, message) values ('Breaking News - Studio Sneak Peek!', 1, '8/1/2023', 'Guess what? We''re back in the studio cooking up something special. Sneak a peek into our creative process. Exciting things are on the horizon!');
insert into notifications (subject, band_id, send_date, message) values ('Save the Date - Virtual Meet & Greet Next Week!', 1, '7/16/2022', 'Mark your calendars, Pixies fans! We''re hosting a virtual meet & greet next week. Get a chance to chat with the band and ask your burning questions. See you there!');
insert into notifications (subject, band_id, send_date, message) values ('Flash Sale Alert - 24 Hours Only!', 1, '7/3/2022', 'Quick heads up, Pixies enthusiasts! We''re having a flash sale for the next 24 hours. Grab your favorite Pixies gear at a special price. Don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Exclusive Behind-the-Scenes Footage Inside!', 1, '7/5/2022', 'Curious about what happens behind the scenes? We''ve got you covered! Check out exclusive footage from our latest photo shoot and rehearsals. Enjoy!');
insert into notifications (subject, band_id, send_date, message) values ('Tour Update - New Dates Added!', 1, '5/2/2023', 'Great news! We''ve added more tour dates to our schedule. Check out the updated list and see if we''re coming to a city near you. Let''s make memories together!');
insert into notifications (subject, band_id, send_date, message) values ('Fan Cover Challenge - Show Us Your Talents!', 1, '3/9/2023', 'Calling all talented Pixies fans! We want to hear your cover of our songs. Share your videos, and we might feature you on our socials. Let the creativity flow!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Vinyl Release - Pre-Order Now!', 1, '2/28/2023', 'Exciting news for vinyl lovers! We''re releasing a limited edition vinyl. Pre-order now to secure your copy and add a piece of The Pixies to your collection.');

--Fallout Boy (2)
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://www.altpress.com/wp-content/uploads/2023/06/22/attachment-Collage-Maker-22-Jun-2023-11-10-AM-789-1052x592.jpg?t=1689163026')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://falloutboy.com/wp-content/uploads/2023/01/fob-share-card.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8oWurzVtkYPvjNaf2_-XY3vGE6zmeKYN5dw&usqp=CAU')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://i.ebayimg.com/images/g/RyMAAOSwBWZgTPmF/s-l1200.webp')
,((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), 'https://nypost.com/wp-content/uploads/sites/2/2021/08/fall-out-boy-cancel-covid-01.jpg?quality=75&strip=all');

insert into notifications (subject, band_id, send_date, message) values ('Emo Anthems Unleashed - New Playlist Alert!', 2, '6/24/2023', 'Hey Fall Out Boy fans! Dive into our curated playlist of emo anthems. Feel the nostalgia and share your favorite tracks with fellow emo souls.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Hangout - Join Us for a Chill Session!', 2, '6/2/2023', 'Calling all Fall Out Boy enthusiasts! Join us for a virtual hangout. Let''s chat, share music recommendations, and have a laid-back time together.');
insert into notifications (subject, band_id, send_date, message) values ('Merch Madness - Fresh Drops in the Store!', 2, '10/18/2023', 'Exciting news! We''ve just released new Fall Out Boy merch. Head to our online store and grab your favorite pieces before they sell out.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Showcase - Display Your Creativity!', 2, '7/30/2023', 'Express your love for Fall Out Boy through art! Share your fan art, and we might showcase it on our official page. Show off your creative vibes!');
insert into notifications (subject, band_id, send_date, message) values ('Flash Sale Extravaganza - 48 Hours Only!', 2, '5/26/2023', 'Quick heads up! We''re hosting a flash sale for the next 48 hours. Snag your must-have Fall Out Boy items at exclusive prices. Don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Acoustic Serenade - Live Stream Tomorrow!', 2, '10/10/2023', 'Hey Fall Out Boy family! Join us tomorrow for an acoustic serenade. Grab your cozy blanket, get comfortable, and let the acoustic vibes wash over you.');
insert into notifications (subject, band_id, send_date, message) values ('Pop Punk Party - Spotify Playlist Extravaganza!', 2, '7/18/2022', 'Get ready to rock out with our Pop Punk Party playlist on Spotify. Jam to Fall Out Boy classics and discover new pop-punk anthems. Let''s turn up the volume!');
insert into notifications (subject, band_id, send_date, message) values ('Throwback Thursday - Relive the Early Days!', 2, '12/8/2022', 'It''s Throwback Thursday! Take a trip down memory lane with us. Share your favorite early Fall Out Boy memories and let''s reminisce together.');
insert into notifications (subject, band_id, send_date, message) values ('Trivia Night - Test Your FOB Knowledge!', 2, '1/27/2023', 'Think you know everything about Fall Out Boy? Join us for a trivia night and prove your FOB expertise. Prizes await the ultimate fans!');
insert into notifications (subject, band_id, send_date, message) values ('Tour Buzz - Catch Us in Your City Soon!', 2, '10/1/2022', 'Get ready for an epic Fall Out Boy experience! Check out our latest tour dates and see if we''re bringing the party to your city. Let''s make memories together!');

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop Rock'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Pop'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Emo Pop'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Fallout Boy')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock'));

--Sublime (3)
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://media.redbullmusicacademy.com/assets/R-4041722-1353281684-6560.jpeg.af05ceec.jpg?auto=format&w=800')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.thrashermagazine.com//mediaV2/k2/items/cache/5b36f508dfbbde14957b3d594eaf7fec_L.jpg?t=1465580067')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.austinchronicle.com/binary/1f2b/music_feature1-6.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Sublime'), 'https://www.offbeat.com/wp-content/uploads/2012/03/mar-12-news-sublime.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Beach Vibes Only - New Summer Playlist!', 3, '1/13/2023', 'Sublime fans, soak up the sun with our curated summer playlist. Feel the beach vibes wherever you are. Press play and let the good times roll!');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Jam Session - Join the Groove!', 3, '11/12/2022', 'Calling all Sublime enthusiasts! Join us for a virtual jam session. Get your instruments ready, and let''s create some musical magic together.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch - Surf''s Up!', 3, '11/21/2022', 'Exciting news! We''ve dropped limited edition Sublime merch. Ride the wave and grab your favorites before they wash away.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Spotlight - Showcase Your Talents!', 3, '12/24/2022', 'Express your Sublime love through art! Share your fan art, and we might feature it on our official page. Show us your creative side!');
insert into notifications (subject, band_id, send_date, message) values ('Flash Sale Alert - 24 Hours Only!', 3, '11/22/2022', 'Quick heads up! Dive into our flash sale for the next 24 hours. Snag your favorite Sublime gear at a special price. Don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Acoustic Serenade - Live Stream Tomorrow!', 3, '11/9/2022', 'Hey Sublime tribe! Join us tomorrow for an acoustic serenade. Grab a seat, chill out, and let the music carry you away.');
insert into notifications (subject, band_id, send_date, message) values ('Island Rhythms - Exclusive Spotify Playlist!', 3, '8/23/2022', 'Escape to the islands with our exclusive Spotify playlist. Immerse yourself in Sublime''s signature island rhythms. Hit play and vibe with us!');
insert into notifications (subject, band_id, send_date, message) values ('Throwback Thursday - Classic Hits Revisited!', 3, '11/10/2022', 'It''s Throwback Thursday! Revisit some classic Sublime hits with us. Share your favorite throwback tunes and let the nostalgia flow.');
insert into notifications (subject, band_id, send_date, message) values ('Sublime Trivia Night - Test Your Knowledge!', 3, '7/18/2023', 'Think you know everything about Sublime? Join us for a trivia night and put your Sublime knowledge to the test. Prizes await the true fans!');
insert into notifications (subject, band_id, send_date, message) values ('Summer Concert Series - Coming to Your City!', 3, '6/5/2023', 'Get ready for a Sublime summer! Check out our updated concert series and see if we''re bringing the party to your city. Let''s make it a summer to remember!');

INSERT INTO band_genres(band_id, genre_id)
VALUES ((SELECT band_id FROM bands WHERE bandname = 'Sublime')
       ,(SELECT genre_id FROM genres WHERE genre_name = 'Rhythm and Blues'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Sublime')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Soul'));

--Boston (4)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Boston'), 'https://greenwoodcalendar.com/wp-content/uploads/2008/08/new-boston.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Boston'), 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8a19e6ea-e688-41b0-b406-b8ef95d8fd80/d1aget6-eee96433-4eef-46d4-ba88-d29113496005.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzhhMTllNmVhLWU2ODgtNDFiMC1iNDA2LWI4ZWY5NWQ4ZmQ4MFwvZDFhZ2V0Ni1lZWU5NjQzMy00ZWVmLTQ2ZDQtYmE4OC1kMjkxMTM0OTYwMDUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.0I7h-7BGKWesKiyZiTEBp0qdVSlW_e3Mesg9G3LQz4c'),
  ((SELECT band_id FROM bands WHERE bandname = 'Boston'), 'https://res.cloudinary.com/teepublic/image/private/s--zmdFkaGK--/c_crop,x_10,y_10/c_fit,h_1109/c_crop,g_north_west,h_1260,w_840,x_-83,y_-76/co_rgb:000000,e_colorize,u_Misc:One%20Pixel%20Gray/c_scale,g_north_west,h_1260,w_840/fl_layer_apply,g_north_west,x_-83,y_-76/bo_105px_solid_white/e_overlay,fl_layer_apply,h_1260,l_Misc:Art%20Print%20Bumpmap,w_840/e_shadow,x_6,y_6/c_limit,h_1254,w_1254/c_lpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_auto:good:420,w_630/v1696494141/production/designs/51429127_0.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Boston'), 'https://guitar.com/wp-content/uploads/2021/06/Boston-Credit-Ron-Pownall-Getty-Images@1400x1050.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Blast from the Past - Boston Classics on Repeat!', 4, '5/21/2023', 'Hey Boston fans! Time to revisit the classics. Hit play on our timeless hits and let the nostalgia take over. Share your all-time favorites in the comments!');
insert into notifications (subject, band_id, send_date, message) values ('Rock Anthem Alert - New Single Out Now!', 4, '9/10/2022', 'Exciting news, Boston enthusiasts! We''ve dropped a brand new rock anthem. Give it a listen and let us know what you think. Rock on!');
insert into notifications (subject, band_id, send_date, message) values ('Exclusive Vinyl Release - Limited Edition!', 4, '12/9/2023', 'Attention vinyl lovers! We''re releasing a limited edition Boston vinyl. Pre-order now and secure your piece of rock history.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Appreciation Day - Cheers to You!', 4, '9/17/2022', 'This one''s for our amazing fans! Join us for Fan Appreciation Day. Share your Boston memories, and let''s celebrate the bond we''ve built over the years.');
insert into notifications (subject, band_id, send_date, message) values ('Live Concert Announcement - Save the Date!', 4, '9/19/2023', 'Get ready for an unforgettable night! We''re announcing a special live concert. Save the date, grab your tickets, and let''s rock the night away.');

--The Talking Heads (5)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'The Talking Heads'), 'https://i.scdn.co/image/e4c5b04fce8706c87663357b1f78522a3a5c641b'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Talking Heads'), 'https://c8.alamy.com/comp/H9HBB0/cover-of-remain-in-light-1980-album-by-talking-heads-on-sire-editorial-H9HBB0.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Talking Heads'), 'https://m.media-amazon.com/images/M/MV5BN2VlMGVmNTMtYTM4ZS00MjcwLWEyNjAtYmRmYjc4MWE1ZGEyXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Talking Heads'), 'https://thevinylfactory.com/wp-content/uploads/2013/08/talking-heads.png');

insert into notifications (subject, band_id, send_date, message) values ('Timeless Tunes - Dive into Talking Heads Classics!', 5, '6/4/2023', 'Hey Talking Heads fans! Take a trip down memory lane with our timeless classics. Press play and let the eclectic sounds of Talking Heads fill your day.');
insert into notifications (subject, band_id, send_date, message) values ('Live Stream Extravaganza - Talking Heads Unplugged!', 5, '5/13/2023', 'Calling all Talking Heads enthusiasts! Join us for a special unplugged live stream. Get ready for intimate vibes and stripped-down versions of your favorite hits.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Showcase - Your Creativity, Our Spotlight!', 5, '9/6/2022', 'Express your love for The Talking Heads through art! Share your fan creations, and we might showcase them on our official page. Show us your artistic side!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch Drop - Grab Yours Now!', 5, '3/25/2023', 'Exciting news! We''ve just released limited edition Talking Heads merch. Head to our online store and snag your favorite pieces before they disappear.');
insert into notifications (subject, band_id, send_date, message) values ('Throwback Thursday - Iconic Moments Revisited!', 5, '9/11/2022', 'It is Throwback Thursday! Let us revisit some iconic Talking Heads moments. Share your favorite memories and let us celebrate the journey together.');

--Modest Mouse (6)
INSERT INTO gallery (band_id, image_url)
VALUES
 ((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.nme.com/wp-content/uploads/2019/03/GettyImages-1055015804.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://media2.houstonpress.com/hou/imager/u/slideshow/12082556/modestmouse_10082021_htx_voletaalvarez_1306.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://ewscripps.brightspotcdn.com/dims4/default/beecc1b/2147483647/strip/true/crop/4923x2769+0+514/resize/1280x720!/quality/90/?url=http%3A%2F%2Fewscripps-brightspot.s3.amazonaws.com%2F68%2F3b%2F495dda2f488db104148cfa5af80f%2Fap21214011592393.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.nme.com/wp-content/uploads/2022/03/modest-mouse-live.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.theamp.com/assets/img/modestmouse_eventimage-c893d6fe58.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://www.usatoday.com/gcdn/-mm-/bcf73afd1590f77160e5baf0ee4853b18f0ba0d2/c=166-649-2137-1763/local/-/media/2015/03/17/USATODAY/USATODAY/635621872768363048--images-uploads-gallery-ModestMouse-BenMoon-gloweyes-064-optionA-RGB.jpg?width=660&height=374&fit=crop&format=pjpg&auto=webp')
,((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), 'https://i.etsystatic.com/5813643/r/il/c7ce7d/3683199726/il_570xN.3683199726_4ax3.jpg');

insert into notifications (subject, band_id, send_date, message) values ('New Album Drop Alert!', 6, '5/24/2023', 'Hey Modest Mouse fans! Brace yourselves - our latest album is out now! Dive into the sound waves and let us know your favorite tracks.');
insert into notifications (subject, band_id, send_date, message) values ('Join Us for a Virtual Jam Session!', 6, '7/20/2022', 'Calling all music lovers! Tune in for a virtual jam session with Modest Mouse. Grab your headphones and immerse yourself in the rhythm.');
insert into notifications (subject, band_id, send_date, message) values ('Exclusive Sneak Peek - Behind the Scenes!', 6, '7/30/2023', 'Wonder what goes on behind the curtain? Check out our exclusive behind-the-scenes footage. Get a glimpse into the making of our latest music video.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Contest - Show Your Creativity!', 6, '6/13/2023', 'Express your love for Modest Mouse through art! Participate in our fan art contest. The winning masterpiece gets featured on our official page.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch Drop!', 6, '8/13/2022', 'Exciting news! We''ve got some limited edition merch just for you. Dive into our online store and snag your favorite Modest Mouse gear before it''s gone.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Fan Meetup - Save the Date!', 6, '6/5/2022', 'Mark your calendars! We''re hosting a virtual fan meetup. Join us for a casual chat, trivia, and maybe a surprise or two. See you there!');
insert into notifications (subject, band_id, send_date, message) values ('Interactive Playlist - Add Your Favorites!', 6, '10/11/2022', 'Let''s build a Modest Mouse community playlist! Reply with your favorite tracks, and let''s create a musical masterpiece together. ');
insert into notifications (subject, band_id, send_date, message) values ('Flash Sale - 48 Hours Only!', 6, '5/9/2023', 'Quick heads up! We''re having a flash sale for the next 48 hours. Snag your Modest Mouse essentials at a special price. Don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Tour Update - Additional Cities Added!', 6, '12/12/2022', 'Good news for our fans! We''ve added more cities to our tour. Check out the updated schedule and grab your tickets before they sell out.');
insert into notifications (subject, band_id, send_date, message) values ('DIY Fan Video Challenge - Get Creative!', 6, '3/28/2023', 'Lights, camera, action! We challenge you to create a DIY Modest Mouse music video. Share your masterpiece, and let''s celebrate creativity together.');

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Modest Mouse')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie Rock'));

--The Cranberries (7)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), 'https://static01.nyt.com/images/2018/12/30/world/30notable-oriordan/17oriordan-videoSixteenByNineJumbo1600.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), 'https://m.media-amazon.com/images/M/MV5BYWNlZDBiOTgtNzE3Mi00NDRlLWEyOWItYTY0ZTliNjhkMGMxXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_FMjpg_UX1000_.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), 'https://www.go-to-ireland.com/wp-content/uploads/2013/12/cranberries-1200x450.png'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), 'https://www.grunge.com/img/gallery/the-reason-the-cranberries-broke-up/l-intro-1620758455.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbtg2L8-GtU7TfD1p8ot2AwwKBu0XD9jH7BMlmBWxQaNpwhFby_2bWnUKDHVPJ6yxDog0&usqp=CAU');

INSERT INTO notifications (subject, band_id, send_date, message) values ('Ethereal Vibes - Immerse Yourself in Cranberries Classics!', 7, '8/29/2023', 'Hello Cranberries fans! Transport yourself to another realm with our ethereal classics. Hit play and let Dolores O''Riordan''s timeless vocals captivate your soul.');
INSERT INTO notifications (subject, band_id, send_date, message) values ('Virtual Tribute Night - Celebrate Dolores'' Legacy!', 7, '1/18/2023', 'Calling all Cranberries enthusiasts! Join us for a virtual tribute night to celebrate the extraordinary legacy of Dolores O''Riordan. Share your favorite memories and songs.');
INSERT INTO notifications (subject, band_id, send_date, message) values ('Fan Art Extravaganza - Showcase Your Creative Spirit!', 7, '6/28/2023', 'Express your love for The Cranberries through art! Share your fan art, and we might feature it on our official page. Let your creativity blossom!');
INSERT INTO notifications (subject, band_id, send_date, message) values ('Exclusive Merchandise Drop - Limited Edition!', 7, '4/4/2023', 'Exciting news! We''ve just released limited edition Cranberries merch. Head to our online store and grab a piece of this exclusive collection before it''s gone.');
INSERT INTO notifications (subject, band_id, send_date, message) values ('Acoustic Serenade - Live Stream Tomorrow!', 7, '5/24/2023', 'Hey Cranberries family! Join us tomorrow for an acoustic serenade in honor of Dolores. Grab your headphones, and let''s create a heartfelt musical experience together.');

--The Cure (8)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'The Cure'), 'https://www.udiscovermusic.com/wp-content/uploads/2020/02/The-Cure-GettyImages-1077403206.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cure'), 'https://pbs.twimg.com/media/FwCdoZ6WIAIzzQS.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cure'), 'https://www.uncut.co.uk/wp-content/uploads/2022/02/robertsmith2021@1400x1050.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'The Cure'), 'https://cdn.britannica.com/04/239704-050-1F052D95/Members-British-rock-band-The-Cure-circa-1984.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Cure Classics Revival - Hit Play for Nostalgia!', 8, '12/22/2022', 'Hey Cure fans! Revive the nostalgia with our curated playlist of timeless classics. Press play and let the haunting melodies of The Cure take you on a journey.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Fan Gathering - Join Us for a Dark Wave Night!', 8, '9/24/2022', 'Calling all Cure enthusiasts! Join us for a virtual fan gathering, as we immerse ourselves in the dark wave magic of The Cure. Bring your favorite memories and let''s connect!');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Showcase - Your Imagination, Our Canvas!', 8, '7/22/2023', 'Express your love for The Cure through art! Share your fan art, and we might feature it on our official page. Let your creativity flow in the shadows!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merchandise Drop - Embrace the Darkness!', 8, '10/22/2022', 'Exciting news! We''ve just released limited edition Cure merchandise. Dive into our online store and embrace the darkness with exclusive pieces before they vanish.');
insert into notifications (subject, band_id, send_date, message) values ('Acoustic Reverie - Live Stream Tomorrow!', 8, '9/17/2023', 'Hello Cure aficionados! Join us tomorrow for an acoustic reverie. Grab your favorite blanket, get cozy, and let''s bask in the melancholic beauty of The Cure''s stripped-down melodies.');

--Joy Division (9)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Joy Division'), 'https://thred.com/wp-content/uploads/2020/02/joydivisionmain-1920x1100.png'),
  ((SELECT band_id FROM bands WHERE bandname = 'Joy Division'), 'https://musicdatablog.com.ar/wp-content/uploads/2021/05/joy-division-influencias-ian-curtis.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Joy Division'), 'https://s26162.pcdn.co/wp-content/uploads/2019/04/joy-division.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Joy Division'), 'https://i.scdn.co/image/5eeddd733170399db794d2c430a8d2cde7ae1425');

insert into notifications (subject, band_id, send_date, message) values ('Sonic Journey - Immerse Yourself in Joy Division''s Echoes!', 9, '12/22/2022', 'Greetings Joy Division devotees! Embark on a sonic journey with our curated playlist, echoing the captivating soundscapes of Joy Division. Press play and let the atmosphere envelop you.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Communion - Join Us for a Dark Wave Ritual!', 9, '9/24/2022', 'Calling all Joy Division enthusiasts! Join us for a virtual communion, where we delve into the mesmerizing world of dark wave. Share your favorite tracks and connect with fellow devotees.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Unveiling - Illuminate Your Creativity!', 9, '7/22/2023', 'Illuminate your love for Joy Division through art! Share your fan creations, and we might unveil them on our official page. Let your creativity shine in the shadows!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Attire - Cloak Yourself in Joy!', 9, '10/22/2022', 'Exciting revelation! We''ve just released limited edition Joy Division attire. Journey to our online sanctum and shroud yourself in exclusive garments before they vanish into the void.');
insert into notifications (subject, band_id, send_date, message) values ('Acoustic Reverberations - Live Stream Tomorrow!', 9, '9/17/2023', 'Salutations, Joy Division connoisseurs! Join us tomorrow for acoustic reverberations. Grasp your solitude, embrace the ambiance, and let''s revel in the ethereal echoes of Joy Division.');

--Gorillaz (10)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Gorillaz'), 'https://miro.medium.com/v2/resize:fit:1400/1*0DMI2uD5kxuRbabxQzuecw.jpeg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Gorillaz'), 'https://media.timeout.com/images/105280358/750/422/image.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Gorillaz'), 'https://media.pitchfork.com/photos/61269d690c92f0ec11ccf665/master/pass/Gorillaz.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Gorillaz'), 'https://mixmag.net/assets/uploads/images/_fullX2/Gorillaz-Mixmag-Web2.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Virtual Animation Party - Dive into the Gorillaz Universe!', 10, '12/22/2022', 'Hey Gorillaz fans! Join us for a virtual animation party where we''ll dive into the eclectic Gorillaz universe. Get ready for visual delights and musical adventures.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Remix Challenge - Unleash Your Creative Beats!', 10, '9/24/2022', 'Calling all Gorillaz enthusiasts! Participate in our fan remix challenge. Unleash your creative beats, and your remix might get featured on our official channels.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Extravaganza - Show Your Animated Spirit!', 10, '7/22/2023', 'Express your love for Gorillaz through art! Share your fan art, and we might showcase it on our virtual gallery. Let your creativity run wild in the Gorillaz world.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch Drop - Collectible Goodies Await!', 10, '10/22/2022', 'Exciting news! We''ve just dropped limited edition Gorillaz merch. Head to our online store and snag collectible goodies before they swing away.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Gorillaz Hangout - Join Us for a Cyberspace Jam!', 10, '9/17/2023', 'Hello Gorillaz tribe! Join us for a virtual hangout in cyberspace. Let''s chat, share our favorite Gorillaz moments, and jam to the tunes that bring us together.');

--Daft Punk (11)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Daft Punk'), 'https://www.beatportal.com/wp-content/uploads/2021/10/daft-punk-header.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Daft Punk'), 'https://images.squarespace-cdn.com/content/v1/5133c6f3e4b03c8ebed83d05/1615831888811-2L94URUPHRJDRHQA4UVQ/daftpunk2021WEB.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Daft Punk'), 'https://cdn.vox-cdn.com/thumbor/Oi62zug1wAo9bSerBt1ibzopXw8=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22320444/daft_punk_dj_hero.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Daft Punk'), 'https://postercabaret.com/wp-content/uploads/2019/07/products-doyle_daft.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Robot Revolution - Daft Punk Essentials Playlist!', 11, '12/22/2022', 'Greetings Daft Punk enthusiasts! Immerse yourself in a robotic revolution with our curated playlist featuring Daft Punk essentials. Press play and let the electronic journey begin! ');
insert into notifications (subject, band_id, send_date, message) values ('Technologic Remix Challenge - Unleash Your Creativity!', 11, '9/24/2022', 'Calling all Daft Punk fans! Participate in our Technologic remix challenge. Unleash your creativity, and your remix could be featured in our digital hall of fame.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Showcase - Illuminate the Grid!', 11, '7/22/2023', 'Illuminate the digital grid with your love for Daft Punk! Share your fan art, and we might showcase it in our virtual gallery. Let your creativity shine in the neon lights.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Helmets - Cybernetic Couture Release!', 11, '10/22/2022', 'Exciting announcement! We''ve released limited edition Daft Punk helmets. Navigate to our online store and secure your cybernetic couture before it vanishes into the digital realm.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Galaxy Groove - Live Stream Tomorrow!', 11, '9/17/2023', 'Salutations, Daft Punk disciples! Join us tomorrow for a virtual galaxy groove. Don your digital attire, and let''s dance together in the neon-lit universe of Daft Punk.');

--N.W.A (12)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'N.W.A'), 'https://miro.medium.com/v2/resize:fit:1358/1*_gvvBMq11ugUwoaeZI-FCA.jpeg'),
  ((SELECT band_id FROM bands WHERE bandname = 'N.W.A'), 'https://images.squarespace-cdn.com/content/v1/520ed800e4b0229123208764/1379958363218-75OOM9LW0RQ355JZ2P7L/blackwhite.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'N.W.A'), 'https://vintagevtg.com/cdn/shop/products/Productcopy3-1-2023-01-26T225756.417_1800x1800.jpg?v=1674794958'),
  ((SELECT band_id FROM bands WHERE bandname = 'N.W.A'), 'https://images.hindustantimes.com/rf/image_size_800x600/HT/p2/2016/04/25/Pictures/_f88462a6-0a91-11e6-96c0-67356a4ec227.PNG');

insert into notifications (subject, band_id, send_date, message) values ('Straight Outta Compton - N.W.A Anthems Unleashed!', 12, '12/22/2022', 'Hey N.W.A fans! Take a journey straight outta Compton with our curated playlist of N.W.A anthems. Press play and let the beats of the streets flow through you.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Remix Challenge - Remix the Streets!', 12, '9/24/2022', 'Calling all N.W.A enthusiasts! Join our fan remix challenge. Remix the streets with your beats, and your creation might get a shoutout on our social channels.');
insert into notifications (subject, band_id, send_date, message) values ('Street Art Showdown - Represent Your Hood!', 12, '7/22/2023', 'Represent your hood with N.W.A vibes! Share your street art, and we might showcase it on our virtual walls. Let your creativity be the voice of the streets.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Gear - Straight Outta the Vault!', 12, '10/22/2022', 'Exciting news! We''ve unlocked the vault for limited edition N.W.A gear. Head to our online store and grab exclusive street-worthy pieces before they vanish.');
insert into notifications (subject, band_id, send_date, message) values ('Hood Chronicles - Virtual Gathering Tomorrow!', 12, '9/17/2023', 'Hello N.W.A fam! Join us tomorrow for a virtual hood chronicles gathering. Share your favorite N.W.A memories, and let''s celebrate the impact of the streets on our culture.');

--Wu Tang Clan (13)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Wu Tang Clan'), 'https://www.mrporter.com/cms/ycm/resource/blob/451834/94e7d624d5ef627c1fa07958742b3ca1/6adc0de6-3484-43ed-97a0-6b7438bea9c8-data.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Wu Tang Clan'), 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/2281b612721133.5626c3e5bc694.png'),
  ((SELECT band_id FROM bands WHERE bandname = 'Wu Tang Clan'), 'https://925thebeat.com/wp-content/uploads/2023/10/wu-tang-clan-members-by-Talmage-Garn.png'),
  ((SELECT band_id FROM bands WHERE bandname = 'Wu Tang Clan'), 'https://images-prod.dazeddigital.com/900/azure/dazed-prod/1310/5/1315437.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Enter the Wu - Essential Tracks Unleashed!', 13, '12/22/2022', 'Greetings Wu-Tang disciples! Enter the Wu with our essential tracks playlist. Press play and let the wisdom of the Wu-Tang Clan flow through your speakers.');
insert into notifications (subject, band_id, send_date, message) values ('Clan Remix Challenge - Wu Your Way!', 13, '9/24/2022', 'Calling all Wu-Tang warriors! Join our Clan remix challenge. Wu your way into our hearts, and your remix might echo through the chambers of the Wu-Tang legacy.');
insert into notifications (subject, band_id, send_date, message) values ('Graffiti Showcase - Wu Your Walls!', 13, '7/22/2023', 'Wu your walls with street wisdom! Showcase your Wu-Tang inspired graffiti, and we might feature it in our virtual gallery. Let your creativity be the paintbrush of the streets.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Killa Gear - Exclusive Drop!', 13, '10/22/2022', 'Exciting news! We''ve dropped limited edition Killa gear. Dive into our online store and grab exclusive Wu-Tang Clan pieces before they vanish like a shadow in the night.');
insert into notifications (subject, band_id, send_date, message) values ('Shaolin Cipher - Virtual Gathering Tomorrow!', 13, '9/17/2023', 'Greetings Shaolin disciples! Join us tomorrow for a virtual Shaolin cipher. Share your Wu-Tang stories, and let''s celebrate the strength and wisdom of the Clan.');

--Pink Floyd (14)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Pink Floyd'), 'https://www.greeleytribune.com/wp-content/uploads/2023/04/GRE-Z-AimsPinkFloyd.jpg?w=750'),
  ((SELECT band_id FROM bands WHERE bandname = 'Pink Floyd'), 'https://static.wixstatic.com/media/25f9a3_db185ff9d8b94614bf59d62a7686d824~mv2.png/v1/fit/w_600%2Ch_388%2Cal_c%2Cq_80,enc_auto/file.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Pink Floyd'), 'https://mobileartdisco.co.uk/cdn/shop/articles/BLOG_ICON_4.jpg?v=1643296679'),
  ((SELECT band_id FROM bands WHERE bandname = 'Pink Floyd'), 'https://images.bauerhosting.com/marketing/sites/16/2023/07/Pink-Floyd-Hero.jpg?ar=16%3A9&fit=crop&crop=top&auto=format&w=1440&q=80');

insert into notifications (subject, band_id, send_date, message) values ('Timeless Odyssey - Dive into the Pink Floyd Galaxy!', 14, '12/22/2022', 'Hey Pink Floyd aficionados! Embark on a timeless odyssey with our curated playlist of Pink Floyd''s celestial classics. Press play and let the sonic journey begin.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Cover Challenge - Echo Your Creativity!', 14, '9/24/2022', 'Calling all Pink Floyd enthusiasts! Join our fan cover challenge. Echo your creativity through a Pink Floyd cover, and your rendition might resonate across our channels.');
insert into notifications (subject, band_id, send_date, message) values ('Visual Spectacle - Share Your Floydian Art!', 14, '7/22/2023', 'Illuminate our world with Floydian art! Share your visual spectacles inspired by Pink Floyd, and we might showcase them on our virtual canvas. Let your creativity paint the cosmos.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Memorabilia - Relics Unearthed!', 14, '10/22/2022', 'Exciting discovery! We''ve unearthed limited edition Pink Floyd memorabilia. Journey to our online vault and secure your relics before they transcend into the realm of collectors.');
insert into notifications (subject, band_id, send_date, message) values ('Dark Side Chronicles - Virtual Gathering Tomorrow!', 14, '9/17/2023', 'Greetings Dark Side pilgrims! Join us tomorrow for a virtual Dark Side chronicles gathering. Share your Pink Floyd stories, and let''s celebrate the transcendental impact of the cosmic soundwaves.');

--Lake Street Dive (15)
INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://www.millerauditorium.com/sites/default/files/styles/square_large/public/images/lake_street_dive_1080_0.png?h=57024e64&itok=d9_mhtRk')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://www.nonesuch.com/sites/g/files/g2000014771/files/2022-07/lake-street-dive-rachael-vilray-2022-tours-2021-1129-1200x628.jpg')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://pbs.twimg.com/media/GBFVX1qWYAE-xwG?format=jpg&name=large')
,((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), 'https://variety.com/wp-content/uploads/2021/02/lake-street-also-nice-e1612978123766.png');

insert into notifications (subject, band_id, send_date, message) values ('Tour Update - Fresh Stops Added!', 15, '5/7/2023', 'Great news, Lake Street Dive fans! We''ve added more cities to our tour. Check out the updated schedule and grab your tickets before they run out.');
insert into notifications (subject, band_id, send_date, message) values ('Dive into Our Latest Album!', 15, '6/1/2023', 'Hey music lovers! Our newest album is now available. Immerse yourself in the tunes and let us know your favorite tracks.');
insert into notifications (subject, band_id, send_date, message) values ('Virtual Fan Hangout - Save the Date!', 15, '9/18/2022', 'Mark your calendars! We''re hosting a virtual fan hangout. Join us for a laid-back chat, music discussions, and maybe a surprise or two. See you there!');
insert into notifications (subject, band_id, send_date, message) values ('Exclusive Merchandise Drop!', 15, '1/29/2023', 'Exciting news! We''ve just released exclusive merchandise. Dive into our online store and snag your favorite Lake Street Dive gear before it''s gone.');
insert into notifications (subject, band_id, send_date, message) values ('Interactive Playlist - Add Your Favorites!', 15, '11/29/2022', 'Let''s build a community playlist together! Reply with your top Lake Street Dive tracks, and let''s create a musical masterpiece.');
insert into notifications (subject, band_id, send_date, message) values ('Flash Sale Alert - Limited Time Only!', 15, '11/22/2023', 'Quick heads up! We''re having a flash sale for the next 48 hours. Snag your Lake Street Dive essentials at a special price. Don''t miss out!');
insert into notifications (subject, band_id, send_date, message) values ('Behind-the-Scenes Look - New Music Video!', 15, '10/13/2023', 'Curious about the making of our latest music video? Check out the exclusive behind-the-scenes footage. Get a glimpse into the creative process.');
insert into notifications (subject, band_id, send_date, message) values ('DIY Fan Art Challenge - Show Your Creativity!', 15, '11/17/2022', 'Express your love for Lake Street Dive through art! Participate in our fan art challenge. The winning creation gets featured on our official page.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Cover Contest - Showcase Your Talent!', 15, '1/1/2023', 'Calling all talented fans! Showcase your musical skills in our fan cover contest. The winning cover might just get a special shoutout from us.');
insert into notifications (subject, band_id, send_date, message) values ('Intimate Acoustic Session - Live Stream Tomorrow!', 15, '5/29/2023', 'Hey music enthusiasts! Join us tomorrow for a special acoustic live stream session. Grab your headphones and experience the intimate side of Lake Street Dive.');

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Alternative'));

INSERT INTO band_genres(band_id, genre_id) VALUES (
    (SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive')
    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie'));

--Hans Zimmer (16)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), 'https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/10/hans-zimmer-scores.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), 'https://www.o2arena.cz/wp-content/uploads/2022/01/hans_zimmer_live_2022_o2-arena_1322x623px.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), 'https://web-assets.sso.org.sg/images/_2500xAUTO_crop_center-center_none/Hans-Zimmer-Updated-2560x1440.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), 'https://dailycal.org/wp-content/uploads/2017/08/Hans-Zimmer-Live_Hans-Zimmer-Live.Courtesy-copy-698x450.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Zimmer''s Symphony - Immerse in Cinematic Brilliance!', 16, '12/22/2022', 'Hello Hans Zimmer enthusiasts! Immerse yourself in Zimmer''s symphony with our curated playlist of cinematic brilliance. Press play and let the enchanting melodies take you on an epic journey.');
insert into notifications (subject, band_id, send_date, message) values ('Soundtrack Remix Challenge - Craft Your Epic Score!', 16, '9/24/2022', 'Calling all aspiring composers! Join our soundtrack remix challenge inspired by Hans Zimmer. Craft your epic score, and your creation might be featured as a tribute to cinematic greatness.');
insert into notifications (subject, band_id, send_date, message) values ('Visual Harmony - Showcase Your Zimmer-Inspired Art!', 16, '7/22/2023', 'Harmonize your creativity with Zimmer''s genius! Share your visual creations inspired by Hans Zimmer, and we might spotlight your art on our digital canvas. Let the visuals resonate!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Conductor''s Collection - Exclusive Release!', 16, '10/22/2022', 'Exciting news! We''ve released the Limited Edition Conductor''s Collection by Hans Zimmer. Visit our online stage and secure your exclusive pieces before they orchestrate their way into history.');
insert into notifications (subject, band_id, send_date, message) values ('Maestro''s Insight - Virtual Session Tomorrow!', 16, '9/17/2023', 'Greetings aspiring maestros! Join us tomorrow for a virtual Maestro''s Insight session. Share your Hans Zimmer experiences, and let''s delve into the intricacies of composing for the silver screen.');

--Tom Petty (17)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Tom Petty'), 'https://paulkingart.com/wp-content/uploads/2021/01/Tom-Petty-1978_PWK.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Tom Petty'), 'https://www.straight.com/files/v3/styles/gs_standard/public/2014/08/tom-petty-logo.png?itok=YPGso_RJ'),
  ((SELECT band_id FROM bands WHERE bandname = 'Tom Petty'), 'https://www.cheatsheet.com/wp-content/uploads/2022/12/Tom-Petty-and-the-Heartbreakers-original-members.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Tom Petty'), 'https://imengine.public.prod.cdr.navigacloud.com/?uuid=D7180543-0178-4C0A-848D-8A25586074E5&function=cover&type=preview&source=false&width=1050&height=550');

insert into notifications (subject, band_id, send_date, message) values ('Highway Heart - Cruise with Tom''s Classics!', 17, '12/22/2022', 'Hey Tom Petty fans! Hit the highway with our curated playlist of Tom''s classics. Press play and let the freedom of his music accompany your journey.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Cover Challenge - Jam Your Petty Spirit!', 17, '9/24/2022', 'Calling all Heartbreakers! Join our fan cover challenge. Jam your Petty spirit into a cover, and your rendition might be featured as a tribute to the legendary Tom Petty.');
insert into notifications (subject, band_id, send_date, message) values ('Artistic Visions - Showcase Your Petty-Inspired Art!', 17, '7/22/2023', 'Express your love for Tom Petty through art! Share your Petty-inspired creations, and we might showcase them on our virtual stage. Let your creativity flow like a free fall.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Memorabilia - Timeless Treasures!', 17, '10/22/2022', 'Exciting discovery! We''ve uncovered limited edition Tom Petty memorabilia. Head to our online treasure trove and secure your timeless pieces before they become collector''s gems.');
insert into notifications (subject, band_id, send_date, message) values ('Wildflowers Gathering - Virtual Tribute Tomorrow!', 17, '9/17/2023', 'Greetings Wildflowers! Join us tomorrow for a virtual Wildflowers gathering. Share your Tom Petty stories, and let''s pay tribute to the enduring legacy of a musical icon.');

--Green Day (18)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'Green Day'), 'https://faroutmagazine.co.uk/static/uploads/1/2023/05/Green-Day-Billie-Joe-Armstrong-Mike-Dirnt-Tre-Cool-Far-Out-Magazine.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Green Day'), 'https://cdn.europosters.eu/image/750/posters/green-day-dookie-i108319.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Green Day'), 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/8d55f057243397.59cdede56595d.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'Green Day'), 'https://static01.nyt.com/images/2021/10/10/magazine/10mag-LOR-1/10mag-LOR-1-superJumbo.jpg');

insert into notifications (subject, band_id, send_date, message) values ('American Idiot Anthems - Blast from the Past!', 18, '12/22/2022', 'Hey Green Day fans! Relive the punk rock revolution with our curated playlist of American Idiot anthems. Press play and let the energy of Green Day fuel your day.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Explosion - Show Your Green Spirit!', 18, '9/24/2022', 'Express your love for Green Day through art! Share your fan art, and we might showcase it on our virtual stage. Let your creativity explode like a musical revolution.');
insert into notifications (subject, band_id, send_date, message) values ('Dookie Flashback - 90s Punk Revival!', 18, '7/22/2023', 'Calling all punk enthusiasts! Take a flashback to the Dookie era with our curated playlist. Share your favorite tracks and let''s revive the 90s punk spirit together.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch Drop - Rocker''s Paradise!', 18, '10/22/2022', 'Exciting news! We''ve just dropped limited edition Green Day merch. Head to our online punk paradise and grab exclusive gear before it disappears into the mosh pit.');
insert into notifications (subject, band_id, send_date, message) values ('Revolution Radio - Virtual Meetup Tomorrow!', 18, '9/17/2023', 'Greetings Revolutionaries! Join us tomorrow for a virtual Revolution Radio meetup. Share your Green Day memories, and let''s celebrate the enduring impact of punk rock.');

--David Bowie (19)
INSERT INTO gallery (band_id, image_url)
VALUES
  ((SELECT band_id FROM bands WHERE bandname = 'David Bowie'), 'https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71TdkhuVmkL._AC_UF1000,1000_QL80_.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'David Bowie'), 'https://cdn.aarp.net/content/aarpe/en/home/entertainment/movies-for-grownups/info-2022/david-bowie-movie-roles/_jcr_content/root/container_main/container_body_main/container_body1/container_body_cf/container_image/articlecontentfragment/cfimage.coreimg.50.932.jpeg/content/dam/aarp/entertainment/movies-for-grownups/2022/08/1140-david-bowie-the-man-who-fell-to-earth-labyrinth-2.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'David Bowie'), 'https://ew.com/thmb/N___T0s_mORJFIwLu3NlIivrzZw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/gettyimages-92783053-21f8de66b9ae41d7b8539aba81158094.jpg'),
  ((SELECT band_id FROM bands WHERE bandname = 'David Bowie'), 'https://render.fineartamerica.com/images/rendered/default/print/6.5/8/break/images/artworkimages/medium/1/david-bowie-pop-art-bekare-creative.jpg');

insert into notifications (subject, band_id, send_date, message) values ('Starman Chronicles - Journey through Bowie''s Hits!', 19, '12/22/2022', 'Hey Bowie enthusiasts! Embark on a cosmic journey with our curated playlist featuring hits from the Starman himself. Press play and let the stardust of Bowie''s music illuminate your day.');
insert into notifications (subject, band_id, send_date, message) values ('Bowie Remixed - Your Turn to Shine!', 19, '9/24/2022', 'Calling all Space Oddities! Join our Bowie remix challenge. Add your unique spin to Bowie''s classics, and your remix might orbit into the spotlight.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Constellation - Showcase Your Bowie Universe!', 19, '7/22/2023', 'Express your love for Bowie through art! Share your Bowie-inspired creations, and we might feature them in our virtual constellation. Let your creativity shine like a Bowie star.');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Stardust - Exclusive Release!', 19, '10/22/2022', 'Exciting news! We''ve released limited edition Stardust merchandise. Visit our online space and grab exclusive Bowie pieces before they vanish like stardust in the night.');
insert into notifications (subject, band_id, send_date, message) values ('Ziggy Stardust Reunion - Virtual Gathering Tomorrow!', 19, '9/17/2023', 'Greetings Ziggy Stardust travelers! Join us tomorrow for a virtual reunion. Share your Bowie stories, and let''s pay tribute to the iconic legacy of the Thin White Duke.');

INSERT INTO band_genres(band_id, genre_id)
VALUES
((SELECT band_id FROM bands WHERE bandname = 'David Bowie'), (SELECT genre_id FROM genres WHERE genre_name = 'Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Lake Street Dive'), (SELECT genre_id FROM genres WHERE genre_name = 'Pop')),
((SELECT band_id FROM bands WHERE bandname = 'Sublime'), (SELECT genre_id FROM genres WHERE genre_name = 'Reggae')),
((SELECT band_id FROM bands WHERE bandname = 'Modest Mouse'), (SELECT genre_id FROM genres WHERE genre_name = 'Indie Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Fallout Boy'), (SELECT genre_id FROM genres WHERE genre_name = 'Pop Punk')),
((SELECT band_id FROM bands WHERE bandname = 'The Pixies'), (SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock')),
((SELECT band_id FROM bands WHERE bandname = 'The Talking Heads'), (SELECT genre_id FROM genres WHERE genre_name = 'New Wave')),
((SELECT band_id FROM bands WHERE bandname = 'The Cranberries'), (SELECT genre_id FROM genres WHERE genre_name = 'Alternative Rock')),
((SELECT band_id FROM bands WHERE bandname = 'The Cure'), (SELECT genre_id FROM genres WHERE genre_name = 'Gothic Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Joy Division'), (SELECT genre_id FROM genres WHERE genre_name = 'Post-Punk')),
((SELECT band_id FROM bands WHERE bandname = 'Gorillaz'), (SELECT genre_id FROM genres WHERE genre_name = 'Alternative Hip Hop')),
((SELECT band_id FROM bands WHERE bandname = 'Daft Punk'), (SELECT genre_id FROM genres WHERE genre_name = 'Electronic')),
((SELECT band_id FROM bands WHERE bandname = 'N.W.A'), (SELECT genre_id FROM genres WHERE genre_name = 'Hip Hop')),
((SELECT band_id FROM bands WHERE bandname = 'Wu Tang Clan'), (SELECT genre_id FROM genres WHERE genre_name = 'Hip Hop')),
((SELECT band_id FROM bands WHERE bandname = 'Pink Floyd'), (SELECT genre_id FROM genres WHERE genre_name = 'Progressive Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), (SELECT genre_id FROM genres WHERE genre_name = 'Film Score')),
((SELECT band_id FROM bands WHERE bandname = 'Hans Zimmer'), (SELECT genre_id FROM genres WHERE genre_name = 'Classical')),
((SELECT band_id FROM bands WHERE bandname = 'Tom Petty'), (SELECT genre_id FROM genres WHERE genre_name = 'Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Green Day'), (SELECT genre_id FROM genres WHERE genre_name = 'Punk Rock')),
((SELECT band_id FROM bands WHERE bandname = 'Boston'), (SELECT genre_id FROM genres WHERE genre_name = 'Classic Rock'));










COMMIT TRANSACTION;
