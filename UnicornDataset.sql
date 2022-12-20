--Viewing the dataset to see how it looks
select * from Unicorn_Companies order by Funding desc

--Companies from Other industries
select * from Unicorn_Companies
where Industry = 'Other'

select * from Unicorn_Companies order by Valuation desc

select COUNT(Company) as Number_of_Companies from Unicorn_Companies

select AVG(Valuation) as Average_valuation from Unicorn_Companies

select AVG(Funding) as Average_funding from Unicorn_Companies

select Company, Date_Joined, Year_Founded, Industry, Valuation, Funding, ((Funding/Valuation)*100) as Fundind_to_Valuation_Percentage
from Unicorn_Companies
order by 1,2

select SUM(Valuation) as Sum_of_Valuation from Unicorn_Companies

select SUM(Funding) as Sum_of_Funding from Unicorn_Companies

--Number of Companies in Each Country

select Country, COUNT(Company) as Number_of_Companies_in_each_Country from Unicorn_Companies
group by Country 
order by Number_of_Companies_in_each_Country desc

--Looking at the company situated in Nigeria

select * from Unicorn_Companies
where Country = 'Nigeria'

--Number of Companies in Each Country
select Year_Founded, COUNT(Company) as Number_of_Companies_Founded_in_Each_Year from Unicorn_Companies
group by Year_Founded 
order by Number_of_Companies_Founded_in_Each_Year desc

--Companies opreating with relation to Data

select Company, Industry, City, Country, Year_Founded, Valuation, Funding from Unicorn_Companies
where Industry like '%data%'
--Companies opreating with relation to logistics
select Company, Industry, City, Country, Year_Founded, Valuation, Funding from Unicorn_Companies
where Industry like '%logistics%'

--Number of Companies in each Continent
select Continent, count(Company) as Number_of_Companies_per_continent
from Unicorn_Companies
Group by Continent order by Number_of_Companies_per_continent desc

--Companies whose investors include banks
select Company, Industry, City, Country, Year_Founded, Valuation, Funding, Investors from Unicorn_Companies
where Investors like '%Bank%'
--Companies that are from other industries
select Company, Continent, City, Valuation, Industry from Unicorn_Companies
where Industry = 'Other'

--Companies that are banks within our data set
Select * from Unicorn_Companies
where Company like '%Bank%'

