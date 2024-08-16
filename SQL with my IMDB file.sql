SELECT Title, Directors, `Your Rating`, `IMDb Rating`, `Release Date`, `Date Rated` FROM `meraj imdb`.`3a319ae7-11bf-4044-a60c-afc77cb280ba`
select distinct directors from `3a319ae7-11bf-4044-a60c-afc77cb280ba`
select *  from `3a319ae7-11bf-4044-a60c-afc77cb280ba` where directors="Christopher Nolan";

## for wild card search add '%' before the word. like for example "%america%'
SELECT * FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE  TITLE LIKE "%HARRY%"
SELECT * FROM `meraj imdb`.`3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE YEAR = "2024"

#between,or,and  characters
SELECT Title, `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE `Your Rating`>=6 and `Your Rating`<8
SELECT Title, `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE `IMDb Rating` between 6 and 8.5
SELECT Title,  `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE `Your Rating` =6 or`Your Rating`=8
SELECT Title,  `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE `Your Rating` in (6,7,8)

##for anything that is 0 value or no value
select Title,	`Your Rating` from `3a319ae7-11bf-4044-a60c-afc77cb280ba` where `Your Rating` is null
select Title,	`Your Rating` from `3a319ae7-11bf-4044-a60c-afc77cb280ba` where `Your Rating` is not null

#order by sorting ( desc, asc, limit)
SELECT Title, `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` order by `Your Rating` asc limit 5
#offset for 1leaving a row
SELECT Title, `Your Rating`, `IMDb Rating` FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` order by `Your Rating` desc limit 3 offset 1

#min /max/AVG
SELECT MIN(`Your Rating`) FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` where directors="Christopher Nolan"
SELECT MAX(`Your Rating`) AS BEST_OF_NOLAN FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` where directors="Christopher Nolan"

##SHOW A MOVIE OF NOLAN WITH YOUR RATING FROM 6 TO 8.
SELECT Title, `Your Rating`, `IMDb Rating`  FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` WHERE directors="Christopher Nolan" AND `Your Rating`>=6 and `Your Rating`<8

#GROUP BY, COUNT
##Show which years got most movies
SELECT YEAR , COUNT(*) AS NUMBER_OF_MOVIES_EACH_YEAR FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` 
GROUP BY Year
ORDER BY NUMBER_OF_MOVIES_EACH_YEAR DESC

##Show which years got most movies at least 6
## from---where---group by---having---order by
SELECT YEAR , COUNT(*) AS NUMBER_OF_MOVIES_EACH_YEAR FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` 
GROUP BY Year
having NUMBER_OF_MOVIES_EACH_YEAR>=6
ORDER BY NUMBER_OF_MOVIES_EACH_YEAR DESC

#todyas date 
select curdate()
select year(curdate())
select Title, Directors, Year ,year(curdate())-year as realease_years_ago FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` 

##Nolans movies relased how many years ago ?
select Title, Directors, Year ,year(curdate())-year as realease_years_ago FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` 
where directors="Christopher Nolan"
select Title, Directors, Year ,year(curdate())-year as realease_years_ago FROM `3a319ae7-11bf-4044-a60c-afc77cb280ba` 
where directors like "% Nolan"

#distinct for all the types 
select distinct `Title Type` from `meraj imdb`.`3a319ae7-11bf-4044-a60c-afc77cb280ba`

#else /end ,,,,, if else
select *,
case 
	when ....then "its a good movie"
	when ....`3a319ae7-11bf-4044-a60c-afc77cb280ba``3a319ae7-11bf-4044-a60c-afc77cb280ba` then "its okay movie"
	else "bad movie" 
end
from `3a319ae7-11bf-4044-a60c-afc77cb280ba` 

#to add multple tables suppose we have another table name table 2 where there are columns named revenue and income)
select Title, Directors, revenue, income 
from `3a319ae7-11bf-4044-a60c-afc77cb280ba`
join `table 2`
on `meraj imdb`.`3a319ae7-11bf-4044-a60c-afc77cb280ba` =`meraj imdb`.`table 2`