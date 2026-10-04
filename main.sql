CREATE TABLE IF NOT EXISTS community_activity (
    activity_id INTEGER PRIMARY KEY,
    name TEXT,
    day TEXT,
    participants INTEGER,
    duration INTEGER
);

INSERT INTO community_activity(activity_id, name, day, participants, duration)
VALUES
(1, 'Swimming', 'Monday', 20, 45),
(2, 'Theater', 'Tuesday', 19, 90),
(3, 'Volleyball', 'Wednesday', 24, 80),
(4, 'Pilates', 'Thursday', 13, 45),
(5, 'Arts & Crafts', 'Friday', 23, 60),
(6, 'School Band', 'Wednesday', 10, 45),
(7, 'Ice Hockey', 'Tuesday', 18, 90);

SELECT * FROM community_activity;

SELECT name, participants FROM community_activity ORDER BY participants DESC;

SELECT name, participants FROM community_activity ORDER BY participants DESC LIMIT 3;

SELECT name, participants FROM community_activity GROUP BY participants HAVING participants >= 20;