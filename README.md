# Project 1 - Covid Case Analysis

<br/>

**Project Summary:** Analyze global Covid case data to discover insights and visulze the finding.  

**Task Involved:** Data Exploration, Data Visualization

**Tools Used:** SQL, Tableau

<br/>

## Data Summary and Preparation

- The dataset used in this project is the **Coronavirus (COVID-19) Deaths** which collected by **Our World in Data.**

- The duration of the dataset period is between **24/2/2020 - 10/6/2021**

- There are **60 columns** and **94857** observations.

- The dataset has been separated into two two datasets with relevant columns, **CovidDeath** and **CovidVaccination**

<br/>

## Data Exploration

**The following exploration has been conducted by using Microsoft SQL Server. For more inforamtion and comment, please refer to the SQL query file.**

<br/>

First, let's have a look at the total cases vs total deaths in Australia 

![](project-images/1.png)

**Insight ONE**. The first death case in Austrlaia is on the 1st March 2020. Total cases were increasing but death percent remains stable around 3% since 10 Sep 2020.

<br/>

Then, let's have a look at the total Cases vs population infected in Australia

![](project-images/3.png)

**Insight TWO**. The population of AU is around 2549881, the highest percentage of the people who got tested and confirmed covid is 9.8% which is on the 29 Feb 2020. After that, it has been dropped to 0.1% which showing that the Lock down and the quarantine control is doing a good job.

<br/>

After that, let's now have a look which counties has the highest Infction Rate compared to Population.

![](project-images/4.png)

**Insight THREE**. The top 10 countries has a certain small population. US is on ranking 13 which as a 10% infection rate and AU is on ranking 168 which has 0.11% infection rate.

<br/>

Then, let's have a look at the counties with Highest Death count.

![](project-images/5.png)

**Insight FOUR**. US has the highest total death count, followed by brazil and India. AU only has 910 death count.

<br/>

Finally, let's now look at the total Population vs Vaccinations in Australia

![](project-images/6.png)

**Insight FIVE**. The first vaccine taken in AU is on the 2-22-2020, and 5344862 of vaccinations has been applied by the end of 10-06-2021. 

<br/>

## Data Visualization

I have changed little bit of the code as to visulize the data as in Global.

Link to my Tableau Dashboard

**PUT PICTURE 7**

- The cross tab shows the global covid cases and death count.

- The bar chat shows the total death count by Continent.

- The geo map shows the infected population distribution. 

- The time series graph shows the infected trand for the top 8 counties followed by a forcasting analysis. 













