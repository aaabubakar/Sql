--Viewing the Data set to inspect any anomalies
select * from Unicorn_Companies

--Number of continents in the data set
select count (distinct (Continent)) as Number_of_continents from Unicorn_Companies

-- Number of countries in the data set
select count (distinct (Country)) as Number_of_countries from Unicorn_Companies

--Number of companies in the data set
select count (distinct (Company)) as Number_of_companies from Unicorn_Companies

--Number of investors 
select count (distinct (Investors)) as Number_of_investors  from Unicorn_Companies

--Number of Countries present in each continents
select Continent, count (distinct (Country)) as Number_of_Countries from Unicorn_Companies
Group by Continent

--Number of Investors From each Country

select Country, count (distinct (Investors)) as Number_of_Investors from Unicorn_Companies
Group by Country

-- Company with the highest Funding
select * from Unicorn_Companies
where Funding = (Select Max(Funding) from Unicorn_Companies)

-- Company with the Lowest Funding
select * from Unicorn_Companies
where Funding = (Select Min(Funding) from Unicorn_Companies)


-- Company with the Highest Valuation
select * from Unicorn_Companies
where Valuation = (Select Max(Valuation) from Unicorn_Companies)

-- Company with the Lowest Valuation
select * from Unicorn_Companies
where Valuation = (Select distinct(Min(Valuation)) from Unicorn_Companies)

-- Company with the Highest Return on Invetment Valuation
select * from Unicorn_Companies
where Return_on_Investment = (Select Max(Return_on_Investment) from Unicorn_Companies)

-- Company with the Lowest Return on Invetment Valuation
select * from Unicorn_Companies
where Return_on_Investment = (Select Min(Return_on_Investment) from Unicorn_Companies)



--Average year to join

Select AVG(Years_Taken) as Average_Year_To_Join from Unicorn_Companies

--Average Funding
Select ROUND(AVG(Funding), 3) As Average_Funding from Unicorn_Companies

--Average Return on Invetment
Select ROUND(AVG(Return_on_Investment), 3) As Average_Return_on_Investment from Unicorn_Companies

--Average Valuation
Select ROUND(AVG(Valuation), 3) As Average_Valuation from Unicorn_Companies

-- Country with their number of Unicorns
select Country, Count(Company) as Number_of_Companies from Unicorn_Companies
Group by Country
order by Number_of_Companies desc

-- Cities with their total Number of Unicorns City
select City, Count(Company) as Number_of_Companies from Unicorn_Companies
Group by City
order by Number_of_Companies desc

-- Investors with the Highest Number of Unicorns Funded
select Investors, Count(Company) as Number_of_Companies from Unicorn_Companies
Group by Investors
order by Number_of_Companies desc

--Number of Countries, Cities and Companies in each  Continent
select Continent, count (distinct (Country)) as Number_of_Countries,count (distinct (City)) as Number_of_City, count (distinct (Company)) as Number_of_Company
from Unicorn_Companies
Group by Continent

-- Company with the Highest Return on Invetment Valuation
select Company, Year_Founded, Joined, Return_on_Investment, city, Investors
from Unicorn_Companies
where Return_on_Investment = (Select Max(Return_on_Investment) from Unicorn_Companies)