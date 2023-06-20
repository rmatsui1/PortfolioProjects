Select*
From [Portfolio Project World Happiness] ..['2015$']
order by 'Happiness Rank'

-- Each year's Happiest Country winner
Select Country, [Happiness Score]
From [Portfolio Project World Happiness] ..['2015$']
Order by 2 DESC

-- Happiness Score per Continent/Region 2015

Select Country, Region, "Happiness Score"
From [Portfolio Project World Happiness] ..['2015$']
Order by 3 Desc


-- What is the correlation between GDP and Happiness Score 2015

Select Country, [Happiness Score], [Economy (GDP per Capita)] as GDP
From [Portfolio Project World Happiness]..['2015$']
order by 2 

--Averaging each continent/Region Happiness Score 2015

Select DISTINCT Region
From [Portfolio Project World Happiness] ..['2015$']

Select AVG("Happiness Score") as HappinessScore
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Western Europe' 
Group By Country, Region

Select AVG("Happiness Score") as 'Western Europe Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Western Europe'

Select AVG("Happiness Score") as 'Australia and New Zealand Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Australia and New Zealand'

Select AVG("Happiness Score") as 'Central and Eastern Europe Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Central and Eastern Europe'

Select AVG("Happiness Score") as 'Eastern Asia Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Eastern Asia'

Select AVG("Happiness Score") as 'Latin America and Caribbean Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Latin America and Caribbean'

Select AVG("Happiness Score") as 'Middle East and Northern Africa Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Middle East and Northern Africa'

Select AVG("Happiness Score") as 'North America Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'North America'

Select AVG("Happiness Score") as 'Southeastern Asia Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Southeastern Asia'

Select AVG("Happiness Score") as 'Southern Asia Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Southern Asia'

Select AVG("Happiness Score") as 'Sub-Saharan Africa Average Happiness Score'
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Sub-Saharan Africa'


-- Creating Pie Chart for Happiest and Saddest Country. Include all factors

Select*
From [Portfolio Project World Happiness] ..['2015$']
WHERE country = 'switzerland'
 

 Select*
 From [Portfolio Project World Happiness] ..['2015$']
 WHERE country = 'TOGO'

 
-- Creating View For Tableau 

Create view Switzerland as
Select*
From [Portfolio Project World Happiness] ..['2015$']
WHERE country = 'switzerland'

Create view Togo as 
Select*
From [Portfolio Project World Happiness] ..['2015$']
WHERE country = 'TOGO'

Create view AVGContinent as 
Select AVG("Happiness Score") as HappinessScore
From [Portfolio Project World Happiness] ..['2015$']
WHERE Region = 'Western Europe' 
Group By Country, Region

Create view GlobalHappyscore as
Select Country, Region, "Happiness Score"
From [Portfolio Project World Happiness] ..['2015$']
Order by 3 Desc
