---
layout: project
title: Visualizing COVID-19 Data in the Netherlands using React and D3.js
description: >-
  This project is similar to the previous one, but I used React.js and D3.js to visualize the COVID-19 data in the Netherlands.
image: /assets/img/blog/covid-19-visualization-plotly/nl-map-generic-old.webp
tags: [Python, Data Visualization, React.js, D3.js, COVID-19]

hide_last_modified: true
---

# COVID-19 Data Visualization in the Netherlands using D3.js and React.js
This was a project I did to use the dashboarding skills I learned D3.js to visualize the COVID-19 data in the Netherlands. In addition, it helped me learn React.js and how to integrate D3.js with React.js.

The dashboard can be accessed [here](https://covid-data-nl.netlify.app/).

## Data Source
The data is fetched from the RIVM website. The data is fetched using the `requests` library and is updated to the latest data. It is a simple columnar dataset with the following columns:
- City/Municipality name (Gemeente in Dutch)
- Province name (Provincie in Dutch)
- Date
- Number of cases reported till date

The data download and cleaning process is automated using a Python script.

## Data Cleaning and Preprocessing
To remove data points that are not present in the population database, I performed an inner join between the COVID-19 dataset and the population dataset using the city/municipality code as the key.

## Calculating per population metrics
The data is available at the city/municipality level. To make the data more meaningful, I calculated the number of cases, hospital admissions, and deaths per 100,000 population. The population data is fetched from the CBS website.

## Dashboard
The dashboard is built using D3.js. To show the data on the map of the Netherlands, I used the TopoJSON file of the Netherlands. The dashboard has the following components:
- A play button to start the time-lapse
- A time-lapse "scrubber" to view the data over time
- A button to speed up or slow down the time-lapse
- A button to reset the time-lapse

- Uppn hovering over a city/municipality, the data for that city/municipality is displayed in a tooltip.

## Visualization

## Code
The code for this project can be found on my GitHub repository [here](https://github.com/shriniwas26/Timelapse-Vislualization-for-Dutch-COVID-19-Data).


## Deployment

The dashboard is deployed on Netlify, using built in Nerlify features for continuous deployment. The choice of Netlify was made due to its ease of deployment and integration with GitHub, and the fact that it is a static site, and Netlify is free to use for small projects.

## Screenshot

![alt text](/assets/img/Dashboard_2.png)

## Conclusion
Developing a dashboard with D3.js for visualizing COVID-19 data in the Netherlands has been a valuable project. The interactive nature of the dashboard allows users to explore the data in a meaningful way, selecting specific cities/municipalities and different types of data to display. As the number of cases per municipality is displayed on the map, the user can see the spread of COVID-19 over time. The inclusion of per population metrics provides a more accurate representation of the impact of COVID-19.


