--What locations have the highest propensity to experience forest fires?
use First_Class
go
select top 1 FFMC, Location, Season from Forest_fire
where FFMC = (select Max(FFMC) from Forest_Fire)
order by FFMC desc

--What locations actually experience forest fires?
select Location, Season, Month, Area from Forest_Fire
where Area >0
order by Area desc

--What season is forest fires most likely to occur?
select Area, Season from Forest_Fire 
where Area = (select Max(Area) from Forest_Fire)
order by Season desc

--What month has the highest burnt area by forest fires?
select Area, Month, Season from Forest_Fire
where Month = (select Max(Month) from Forest_Fire)
order by Area desc
