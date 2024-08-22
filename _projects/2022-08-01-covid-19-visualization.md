---
layout: project
title: Visualizing COVID-19 Data in the Netherlands using Plotly/Dash
description: >-
  In this project, I have visualized the COVID-19 data in the Netherlands using Plotly/Dash. The data is fetched from the RIVM website. The data is updated daily and the visualization is interactive.
image: /assets/img/blog/covid-19-visualization-plotly/covid-19.png
tags: [Python, Data Visualization, Plotly, Dash, COVID-19]

hide_last_modified: true
---

# COVID-19 Data Visualization in the Netherlands using Plotly/Dash
This was a project I did to use the dashboarding skills I learned (Plotly/Dash) to visualize the COVID-19 data in the Netherlands.


The dadashboard can be accessed [here](https://covid-dashboard-nl-2ad60227cfd2.herokuapp.com/).

## Data Source
The data is fetched from the RIVM website. The data is fetched using the `requests` library and is updated daily. It is a simple columnar dataset with the following columns:
- City/Municipality name (Gemeente in Dutch)
- Province name (Provincie in Dutch)
- Date
- Number of cases reported till date
- Number of hospital admissions till date
- Number of deaths till date

## Data Cleaning and Preprocessing
To remove data points that are not present in the population database, I performed an inner join between the COVID-19 dataset and the population dataset using the city/municipality code as the key.

## Calculating per population metrics
The data is available at the city/municipality level. To make the data more meaningful, I calculated the number of cases, hospital admissions, and deaths per 100,000 population. The population data is fetched from the CBS website.

## Dashboard
The dashboard is built using Plotly/Dash. The dashboard has the following components:
- A dropdown menu to multi-select the cities/municipalities to be displayed
- A dropdown menu to select the type of data to be displayed (cases, hospital admissions, deaths)
- Toggle button for daily or cumulative data
- Toggle button to display the data in absolute numbers or per 100,000 population




## Visualization
The visualization is interactive and the user can select the data to be displayed using the dropdown menu. The data is displayed in the form of a line chart and a bar chart.

## Code
The code for this project can be found on my GitHub repository [here](https://github.com/shriniwas26/COVID-19-Dashboard-for-the-Netherlands).

## Screenshot

![alt text](/assets/img/Dashboard_1.png)

## Conclusion
In conclusion, developing a dashboard with Plotly for visualizing COVID-19 data in the Netherlands has been a valuable project. The interactive nature of the dashboard allows users to explore the data in a meaningful way, selecting specific cities/municipalities and different types of data to display. The inclusion of per population metrics provides a more accurate representation of the impact of COVID-19.

The code for this project is available on my GitHub repository, allowing others to learn from and contribute to the project.


