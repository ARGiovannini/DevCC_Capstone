-- CREATE DATABASE poker_tournaments;

-- Locations with the best Prize Pool Ratio
SELECT `Venue`, ROUND(AVG(`Prize Pool Ratio`), 2) AS AverageRatio
FROM poker_tournaments.cleaned_poker_data
GROUP BY `Venue`
ORDER BY AverageRatio DESC LIMIT 20;

-- Investigate Freerolls
SELECT *
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` = 0;

-- Locations with the highest buy in tournaments
SELECT `Venue`, `Date Time`, `Total buy in`, `Postal Code`
FROM poker_tournaments.cleaned_poker_data
ORDER BY `Total buy in` DESC;

-- Which Venue's have the most tournaments
SELECT `Venue`, count(`Venue`) AS NumberOfTournaments
FROM poker_tournaments.cleaned_poker_data
GROUP BY `Venue`
ORDER BY NumberOfTournaments DESC;

-- Which Postal Codes have the most tournaments
SELECT `Postal Code`, count(`Postal Code`) AS NumberOfTournaments
FROM poker_tournaments.cleaned_poker_data
GROUP BY `Postal Code`
ORDER BY NumberOfTournaments DESC;

-- Average prize pool ratio for tourney's under $100
SELECT AVG(`Prize Pool Ratio`) AS AvgRatio_0to100
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 0 AND `Total buy in` <= 100;
-- Answer: .741
SELECT COUNT(MyUnknownColumn) AS NumberOfTourneys_0to100
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 0 AND `Total buy in` <= 100;
-- Answer: 2953

-- Average prize pool ratio for tourney's with a $100 - $200 Total buy in
SELECT AVG(`Prize Pool Ratio`) AS AvgRatio_100to200
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 100 AND `Total buy in` <= 200;
-- Answer: .794
SELECT COUNT(MyUnknownColumn) AS NumberOfTourneys_100To200
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 100 AND `Total buy in` <= 200;
-- Answer: 1635

-- Average prize pool ratio for tourney's with a $200 - $500 Total buy in
SELECT AVG(`Prize Pool Ratio`)AS AvgRatio_200to500
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 200 AND `Total buy in` <= 500;
-- .833
SELECT COUNT(MyUnknownColumn)AS NumberOfTourneys_200To500
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 200 AND `Total buy in` <= 500;
-- Answer: 541

-- Average prize pool ratio for tourney's with a $500 - $1000 Total buy in
SELECT AVG(`Prize Pool Ratio`) AS AvgRatio_500to1000
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 500 AND `Total buy in` <= 1000;
-- Answer: .8588
SELECT COUNT(MyUnknownColumn) AS NumberOfTourneys_500To1K
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 500 AND `Total buy in` <= 1000;
-- Answer: 48

-- Average prize pool ratio for tourney's with a $1000 - $10000 Total buy in
SELECT AVG(`Prize Pool Ratio`) AS AvgRatio_1KTo10K
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 1000 AND `Total buy in` <= 10000;
-- Answer: .899


-- Average prize pool ratio for tourney's with > $10000 Total buy in
SELECT AVG(`Prize Pool Ratio`) AS AvgRatio_10KandUp
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 10000;
-- Answer: .9558
SELECT COUNT(MyUnknownColumn) AS NumberOfTourneys_10KandUp
FROM poker_tournaments.cleaned_poker_data
WHERE `Total buy in` > 1000;
-- Answer: 51


