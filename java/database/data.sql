BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

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

--Lake Street Dive
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

--Sublime
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

--The Pixies
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

--Boston (4)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

insert into notifications (subject, band_id, send_date, message) values ('Blast from the Past - Boston Classics on Repeat!', 4, '5/21/2023', 'Hey Boston fans! Time to revisit the classics. Hit play on our timeless hits and let the nostalgia take over. Share your all-time favorites in the comments!');
insert into notifications (subject, band_id, send_date, message) values ('Rock Anthem Alert - New Single Out Now!', 4, '9/10/2022', 'Exciting news, Boston enthusiasts! We''ve dropped a brand new rock anthem. Give it a listen and let us know what you think. Rock on!');
insert into notifications (subject, band_id, send_date, message) values ('Exclusive Vinyl Release - Limited Edition!', 4, '12/9/2023', 'Attention vinyl lovers! We''re releasing a limited edition Boston vinyl. Pre-order now and secure your piece of rock history.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Appreciation Day - Cheers to You!', 4, '9/17/2022', 'This one''s for our amazing fans! Join us for Fan Appreciation Day. Share your Boston memories, and let''s celebrate the bond we''ve built over the years.');
insert into notifications (subject, band_id, send_date, message) values ('Live Concert Announcement - Save the Date!', 4, '9/19/2023', 'Get ready for an unforgettable night! We''re announcing a special live concert. Save the date, grab your tickets, and let''s rock the night away.');

--The Talking Heads (5)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

insert into notifications (subject, band_id, send_date, message) values ('Timeless Tunes - Dive into Talking Heads Classics!', 5, '6/4/2023', 'Hey Talking Heads fans! Take a trip down memory lane with our timeless classics. Press play and let the eclectic sounds of Talking Heads fill your day.');
insert into notifications (subject, band_id, send_date, message) values ('Live Stream Extravaganza - Talking Heads Unplugged!', 5, '5/13/2023', 'Calling all Talking Heads enthusiasts! Join us for a special unplugged live stream. Get ready for intimate vibes and stripped-down versions of your favorite hits.');
insert into notifications (subject, band_id, send_date, message) values ('Fan Art Showcase - Your Creativity, Our Spotlight!', 5, '9/6/2022', 'Express your love for The Talking Heads through art! Share your fan creations, and we might showcase them on our official page. Show us your artistic side!');
insert into notifications (subject, band_id, send_date, message) values ('Limited Edition Merch Drop - Grab Yours Now!', 5, '3/25/2023', 'Exciting news! We''ve just released limited edition Talking Heads merch. Head to our online store and snag your favorite pieces before they disappear.');
insert into notifications (subject, band_id, send_date, message) values ('Throwback Thursday - Iconic Moments Revisited!', 5, '9/11/2022', 'It''s Throwback Thursday! Let''s revisit some iconic Talking Heads moments. Share your favorite memories and let''s celebrate the journey together.);

--The Cranberries (7)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--The Cure (8)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Joy Division (9)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Gorillaz (10)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Daft Punk (11)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--N.W.A (12)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Wu Tang Clan (13)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Pink Floyd (14)
--INSERT INTO gallery (band_id, image_url) VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')



--INSERT INTO gallery (band_id, image_url)
--        VALUES ((SELECT band_id FROM bands WHERE bandname = ''), '')

--Hans Zimmer (16)
--Tom Petty (17)
--Green Day (18)
--David Bowie (19)




--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = '')
--    ,(SELECT genre_id FROM genres WHERE genre_name = ''));
--
--INSERT INTO band_genres(band_id, genre_id) VALUES (
--    (SELECT band_id FROM bands WHERE bandname = 'Modest Mouse')
--    ,(SELECT genre_id FROM genres WHERE genre_name = 'Indie Rock'));




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

COMMIT TRANSACTION;
