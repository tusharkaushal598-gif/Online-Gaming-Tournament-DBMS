CREATE DATABASE GamingTournamentDB;
USE GamingTournamentDB;

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    player_level INT
);
CREATE TABLE Games (
    game_id INT PRIMARY KEY,
    game_name VARCHAR(50),
    game_type VARCHAR(30),
    max_players INT
);
CREATE TABLE Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50),
    captain_id INT,
    total_members INT
);
CREATE TABLE Tournaments (
    tournament_id INT PRIMARY KEY,
    tournament_name VARCHAR(50),
    game_id INT,
    tournament_date DATE,
    prize_money INT
);
CREATE TABLE Registrations (
    registration_id INT PRIMARY KEY,
    player_id INT,
    tournament_id INT,
    registration_date DATE
);
CREATE TABLE Winners (
    winner_id INT PRIMARY KEY,
    tournament_id INT,
    player_id INT,
    position INT,
    prize_won INT
);
INSERT INTO Players VALUES
(101, 'Tushar', 18, 'Chandigarh', 45),
(102, 'Rahul', 19, 'Mohali', 38),
(103, 'Aman', 20, 'Delhi', 50),
(104, 'Rohit', 18, 'Punjab', 30),
(105, 'Karan', 21, 'Mumbai', 55),
(106, 'Arjun', 19, 'Chandigarh', 42),
(107, 'Vikas', 20, 'Mohali', 35),
(108, 'Sahil', 18, 'Delhi', 48);

INSERT INTO Games VALUES
(1, 'BGMI', 'Battle Royale', 100),
(2, 'Free Fire', 'Battle Royale', 50),
(3, 'Valorant', 'FPS', 10),
(4, 'Minecraft', 'Adventure', 20),
(5, 'Clash Royale', 'Strategy', 2);

INSERT INTO Teams VALUES
(201, 'Team Warriors', 101, 4),
(202, 'Team Legends', 103, 4),
(203, 'Team Hunters', 105, 5),
(204, 'Team Phoenix', 106, 4),
(205, 'Team Titans', 108, 5);

INSERT INTO Tournaments VALUES
(301, 'BGMI Championship', 1, '2026-11-10', 10000),
(302, 'Free Fire Battle', 2, '2026-11-12', 5000),
(303, 'Valorant Masters', 3, '2026-11-15', 15000),
(304, 'Minecraft Challenge', 4, '2026-11-18', 3000),
(305, 'Clash Royale Cup', 5, '2026-11-20', 2000); 

INSERT INTO Registrations VALUES
(401, 101, 301, '2026-11-01'),
(402, 102, 301, '2026-11-02'),
(403, 103, 302, '2026-11-03'),
(404, 104, 302, '2026-11-04'),
(405, 105, 303, '2026-11-05'),
(406, 106, 303, '2026-11-06'),
(407, 107, 304, '2026-11-07'),
(408, 108, 305, '2026-11-08');

INSERT INTO Winners VALUES
(501, 301, 101, 1, 7000),
(502, 301, 102, 2, 3000),
(503, 302, 103, 1, 5000),
(504, 303, 105, 1, 10000),
(505, 303, 106, 2, 5000),
(506, 304, 107, 1, 3000),
(507, 305, 108, 1, 2000);

SELECT * FROM Players;
SELECT * FROM Games;
SELECT * FROM Teams;
SELECT * FROM Tournaments;
SELECT * FROM Registrations;
SELECT * FROM Winners;

SELECT * FROM Players
WHERE city = 'Chandigarh';

SELECT * FROM Players
WHERE player_level > 40;

SELECT * FROM Players
WHERE age < 20;

SELECT * FROM Games
WHERE game_type = 'Battle Royale';

SELECT * FROM Tournaments
WHERE prize_money > 5000;

SELECT * FROM Players
ORDER BY player_name ASC;

SELECT * FROM Players
ORDER BY player_level DESC;

SELECT * FROM Tournaments
ORDER BY prize_money DESC;

SELECT * FROM Winners
WHERE position = 1;

SELECT * FROM Teams
WHERE total_members = 4;

SELECT * FROM Tournaments
WHERE game_id = 1;

SELECT * FROM Registrations
WHERE tournament_id = 301;

SELECT * FROM Players
WHERE city = 'Mohali'
OR city = 'Chandigarh';

SELECT * FROM Winners
WHERE prize_won > 5000;
