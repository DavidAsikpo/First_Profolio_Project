-- TURN EMPTY VALUES TO NULL in covidd table
COMMIT;

-- FOR TOTAL DEATHS
UPDATE covidd 
SET 
    total_deaths = NULL
WHERE
    total_deaths = '';

-- FOR NEW DEATHS
UPDATE covidd 
SET 
    new_deaths = NULL
WHERE
    new_deaths = '';
    
 SELECT * FROM covidd;
 
-- FOR new_cases_smoothed_per_million
UPDATE covidd 
SET 
    new_cases_smoothed_per_million = NULL
WHERE
    new_cases_smoothed_per_million  = '';
    
-- FOR total_deaths_per_million
UPDATE covidd 
SET 
    total_deaths_per_million = NULL
WHERE
    total_deaths_per_million  = '';
    
-- FOR new_deaths_per_million
UPDATE covidd 
SET 
    new_deaths_per_million = NULL
WHERE
    new_deaths_per_million = '';
    
-- FOR new_deaths_smoothed_per_million
UPDATE covidd 
SET 
    new_deaths_smoothed_per_million = NULL
WHERE
    new_deaths_smoothed_per_million = '';

-- FOR reproduction_rate
UPDATE covidd 
SET 
    reproduction_rate = NULL
WHERE
    reproduction_rate = '';
    
-- FOR icu_patients
UPDATE covidd 
SET 
    icu_patients = NULL
WHERE
    icu_patients = '';
    
-- icu_patients_per_million
UPDATE covidd 
SET 
   icu_patients_per_million = NULL
WHERE
    icu_patients_per_million = '';
    
-- hosp_patients
UPDATE covidd 
SET 
   hosp_patients = NULL
WHERE
    hosp_patients = '';
    
-- hosp_patients_per_million
UPDATE covidd 
SET 
   hosp_patients_per_million = NULL
WHERE
    hosp_patients_per_million = '';
    
-- weekly_icu_admissions
UPDATE covidd 
SET 
   weekly_icu_admissions = NULL
WHERE
    weekly_icu_admissions = '';
    
    
-- weekly_icu_admissions_per_million
UPDATE covidd 
SET 
   weekly_icu_admissions_per_million = NULL
WHERE
    weekly_icu_admissions_per_million = '';
    
-- weekly_hosp_admissions
UPDATE covidd 
SET 
   weekly_hosp_admissions = NULL
WHERE
    weekly_hosp_admissions = '';
    
-- weekly_hosp_admissions_per_million
UPDATE covidd 
SET 
   weekly_hosp_admissions_per_million = NULL
WHERE
    weekly_hosp_admissions_per_million = '';
    
COMMIT;
-- TURN EMPTY VALUES TO NULL in covidv table

SELECT CONCAT(
    'UPDATE covidv SET ',
    GROUP_CONCAT(CONCAT(column_name, " = NULLIF(", column_name, ", '')") SEPARATOR ', '),
    ';'
)
FROM information_schema.columns
WHERE table_schema = 'First_profolio_project'
  AND table_name = 'covidv'
  AND data_type IN ('char', 'varchar', 'text');
  
  -- TURN EMPTY VALUES TO NULL in covidv table
  -- FOR new_tests
 UPDATE covidv 
SET 
    new_tests = NULL
WHERE
    new_tests = '';
    
    -- FOR total_tests
    UPDATE covidv 
SET 
    total_tests = NULL
WHERE
    total_tests = '';
    
-- for total_tests_per_thousand
   UPDATE covidv 
SET 
    total_tests_per_thousand = NULL
WHERE
    total_tests_per_thousand = '';
    
    -- for new_tests_per_thousand
   UPDATE covidv 
SET 
    new_tests_per_thousand = NULL
WHERE
    new_tests_per_thousand = '';
    
-- new_tests_smoothed
  UPDATE covidv 
SET 
    new_tests_smoothed = NULL
WHERE
    new_tests_smoothed = '';
    
-- new_tests_smoothed_per_th
     UPDATE covidv 
SET 
    new_tests_smoothed_per_thousand = NULL
WHERE
    new_tests_smoothed_per_thousand = '';
    
    -- positive_rate
     UPDATE covidv 
SET 
    positive_rate = NULL
WHERE
    positive_rate = '';
    
   -- tests_per_case
     UPDATE covidv 
SET 
    tests_per_case = NULL
WHERE
    tests_per_case = '';
      
 -- tests_units
     UPDATE covidv 
SET 
    tests_units = NULL
WHERE
    tests_units = '';
      
 -- total_vaccinations
     UPDATE covidv 
SET 
    total_vaccinations = NULL
WHERE
    total_vaccinations = '';
    
 -- people_vaccinated
     UPDATE covidv 
SET 
    people_vaccinated = NULL
WHERE
    people_vaccinated = '';
    
 -- people_fully_vaccinated
     UPDATE covidv 
SET 
    people_fully_vaccinated  = NULL
WHERE
    people_fully_vaccinated = '';
  
  -- new_vaccinations
     UPDATE covidv 
SET 
    new_vaccinations  = NULL
WHERE
    new_vaccinations = '';
    
-- new_vaccinations_smoothed
     UPDATE covidv 
SET 
    new_vaccinations_smoothed  = NULL
WHERE
    new_vaccinations_smoothed = '';
    
    
-- total_vaccinations_per_hundred
     UPDATE covidv 
SET 
    total_vaccinations_per_hundred = NULL
WHERE
    total_vaccinations_per_hundred = '';
    
-- people_fully_vaccinated_per_hundred
     UPDATE covidv 
SET 
    people_fully_vaccinated_per_hundred = NULL
WHERE
    people_fully_vaccinated_per_hundred = '';
    
    
 -- new_vaccinations_smoothed_per_million
     UPDATE covidv 
SET 
    new_vaccinations_smoothed_per_million = NULL
WHERE
    new_vaccinations_smoothed_per_million = '';   
    
-- stringency_index
     UPDATE covidv 
SET 
    stringency_index = NULL
WHERE
    stringency_index = '';   
    
    
-- population_density
     UPDATE covidv 
SET 
    population_density = NULL
WHERE
    population_density = '';    
    
-- median_age
     UPDATE covidv 
SET 
    median_age = NULL
WHERE
    median_age = '';       

-- aged_65_older
     UPDATE covidv 
SET 
    aged_65_older = NULL
WHERE
    aged_65_older = '';      
    
    
-- aged_70_older
     UPDATE covidv 
SET 
    aged_70_older = NULL
WHERE
    aged_70_older = '';   
    
-- gdp_per_capita
     UPDATE covidv 
SET 
    gdp_per_capita = NULL
WHERE
    gdp_per_capita = '';     
  
-- extreme_poverty
     UPDATE covidv 
SET extreme_poverty = NULL
WHERE
    extreme_poverty = '';       
  
-- cardiovasc_death_rate
     UPDATE covidv 
SET cardiovasc_death_rate  = NULL
WHERE
    cardiovasc_death_rate = '';       
  
-- diabetes_prevalence
     UPDATE covidv 
SET diabetes_prevalence  = NULL
WHERE
    diabetes_prevalence = '';       

 -- female_smokers
     UPDATE covidv 
SET female_smokers = NULL
WHERE
    female_smokers = '';  

 -- male_smokers
     UPDATE covidv 
SET male_smokers = NULL
WHERE
    male_smokers = '';  


-- handwashing_facilities
     UPDATE covidv 
SET handwashing_facilities = NULL
WHERE
    handwashing_facilities = ''; 

      
-- hospital_beds_per_thousand
     UPDATE covidv 
SET hospital_beds_per_thousand = NULL
WHERE
    hospital_beds_per_thousand = ''; 

-- life_expectancy
     UPDATE covidv 
SET life_expectancy = NULL
WHERE
    life_expectancy = ''; 
    
-- human_development_index
     UPDATE covidv 
SET human_development_index = NULL
WHERE
    human_development_index = ''; 
    
    
-- people_vaccinated_per_hundred
     UPDATE covidv 
SET people_vaccinated_per_hundred = NULL
WHERE
    people_vaccinated_per_hundred = ''; 
    
use First_profolio_project;    
-- SELECT THE DATA WE ARE GOING TO BE USE 
SELECT 
    location, date_dt, total_cases, total_deaths, population
FROM
    covidd
ORDER BY 1 , 2;


-- Looking At Total Death Percentage Cases In America
-- Shows likelihood of dying in you attract covid in your country 
SELECT 
    location, date_dt, total_cases, total_deaths, total_deaths/total_cases * 100 as death_percentage
FROM
    covidd
    Where location like '%states'
ORDER BY 1 , 2;

-- Looking at the total cases vs the population 
-- shows percentage of people got covid 
SELECT 
    location, date_dt, total_cases, population, (total_cases/population) * 100 as population_infected
FROM
    covidd
    Where location like '%states'
ORDER BY 1 , 2;

-- Looking at countries with highest infection
SELECT 
    location,population, max(total_cases) as highestinfectioncount, max(total_cases/population) * 100 as percentage_infected
FROM
    covidd
    GROUP BY location, population
ORDER BY 4 DESC;

-- Country With The Highest Death Count Per Population
SELECT 
    location,population, max(total_cases) as highestinfectioncount, max(total_cases/population) * 100 as percentage_infected
FROM
    covidd
    GROUP BY location, population
ORDER BY 4 DESC;


-- SHWOING COUNTRIES WITH THE HIGHEST DEATH COUNT PER POPULATION
SELECT location, MAX(CAST(total_deaths AS UNSIGNED)) AS highest_death
FROM covidd
WHERE continent is not NULL
GROUP BY location
ORDER BY total_death_count DESC;

-- LET'S BREAK IT DOWN BY CONTINENT 
SELECT location, MAX(CAST(total_deaths AS UNSIGNED)) AS highest_death
FROM covidd
WHERE continent is not null
GROUP BY location
ORDER BY total_death_count DESC;

-- continents with the highest death count 
SELECT 
    continent,
    max(CAST(total_deaths AS UNSIGNED)) AS total_death_count
FROM
    covidd
WHERE
    continent IS NOT NULL
GROUP BY continent
ORDER BY total_death_count DESC;

-- GETTING GLOBAL NUMBERS 
SELECT 
    date_dt,
    SUM(CAST(new_cases AS UNSIGNED)) AS Tota_New_Cases,
    SUM(CAST(new_deaths AS UNSIGNED)) AS Tota_New_Deaths,
    (SUM(CAST(new_deaths AS UNSIGNED)) / SUM(CAST(new_cases AS UNSIGNED))) * 100 AS Percentage_newdeaths
FROM
    covidd
WHERE
    continent IS NOT NULL
GROUP BY date_dt
ORDER BY date_dt;

-- Looking at Total Population vs increasing new_vaccinatioms as the day goes by 
SELECT 
    dd.continent,
    dd.location,
    dd.date_dt,
    dd.population,
    dv.new_vaccinations, SUM(CAST(dv.new_vaccinations AS UNSIGNED)) OVER 
  (PARTITION BY dd.location ORDER BY dd.location,dd.date_dt) AS Rolling_people_vaccinated
FROM
    covidd dd
        JOIN
    covidv dv ON dd.location = dv.location
        AND dd.date_dt = dv.date_dt
WHERE
    dd.continent IS NOT NULL
ORDER BY 2,3;


-- Creating a CTE 
WITH Topovsinnv (continent,location,date_dt,population,new_vaccinations,Rolling_people_vaccinated)
as 

(SELECT 
    dd.continent,
    dd.location,
    dd.date_dt,
    dd.population,
    dv.new_vaccinations, SUM(CAST(dv.new_vaccinations AS UNSIGNED)) OVER 
  (PARTITION BY dd.location ORDER BY dd.location,dd.date_dt) AS Rolling_people_vaccinated
FROM
    covidd dd
        JOIN
    covidv dv ON dd.location = dv.location
        AND dd.date_dt = dv.date_dt
WHERE
    dd.continent IS NOT NULL
) SELECT 
    *,(rolling_people_vaccinated / population) * 100 AS Per_on_popu_on_no_vacin
FROM
    Topovsinnv
ORDER BY Per_on_popu_on_no_vacin DESC;

-- Creating Views To STore Data For Later Visualizations
CREATE VIEW TopVaccinationProgress AS
SELECT 
    dd.continent,
    dd.location,
    dd.date_dt,
    dd.population,
    dv.new_vaccinations,
    SUM(CAST(dv.new_vaccinations AS UNSIGNED)) OVER (
        PARTITION BY dd.location 
        ORDER BY dd.location, dd.date_dt
    ) AS Rolling_people_vaccinated
FROM
    covidd dd
JOIN
    covidv dv ON dd.location = dv.location AND dd.date_dt = dv.date_dt
WHERE
    dd.continent IS NOT NULL;

SELECT 
    *
FROM
    TopVaccinationProgress;
