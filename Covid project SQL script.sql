
-- 1. Total cases vs total deaths in Australia

-- Note: Asia has been excisted in the location and NULL in contient, we use a WHERE clause to control it

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercent
FROM CovidProject..CovidDeath
WHERE location = 'Australia'
AND continent IS NOT NULL
ORDER BY 1,2


-- 2. Total Cases vs Population in Australia

SELECT location, date, population, total_cases, (total_cases/population)*100 AS InfectedPopulationPercet
FROM CovidProject..CovidDeath
WHERE location = 'Australia'
AND continent IS NOT NULL
ORDER BY 1,2


-- 3. Counties with the highest Infction Rate compared to Population

SELECT location, population, MAX(total_cases) AS HighestInfectionCount, MAX((total_cases/population))*100 AS InfectedPopulationPercent
FROM CovidProject..CovidDeath
GROUP BY location, population
ORDER BY InfectedPopulationPercent DESC


-- 4. Lets have a look at the counties with Highest Death count.
-- Note: Since total death is a nvarchar, I use cast to convert into int

SELECT location, MAX(cast(total_deaths as int)) AS TotalDeathCount
FROM CovidProject..CovidDeath
WHERE continent IS NOT NULL
GROUP BY location
ORDER BY TotalDeathCount DESC

	
-- 5. Total Population vs Vaccinations in Australia

-- Note: By showing the percentage of population that has received at least one Covid Vaccine. I am now joining the vacination table with the death table.
-- Note: I have also using partition by as to calculate the increment of the vaccine taken count.

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM(CONVERT(int, vac.new_vaccinations)) OVER (Partition by dea.location ORDER BY dea.location, dea.date) AS IncrementCountPeopleTookVaccine

FROM CovidProject..CovidDeath dea
JOIN CovidProject..CovidVaccination vac
ON dea.location = vac.location
AND dea.date = vac.date
WHERE dea.continent IS NOT NULL
AND dea.location = 'Australia'
ORDER BY 2,3
