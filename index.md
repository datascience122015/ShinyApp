---
title       : Shiny Application and Reproducible Pitch
subtitle    : Data Product - Coursera Project
author      : Suparna Sen
transition  : rotate
framework   : io2012 # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow
widgets     : [mathjax, bootstrap, shiny, interactive] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft, selfcontained}
knit        : slidify::knit2slides
ext_widgets : {rCharts: [libraries/nvd3, libraries/highcharts]}
---

===
Overview
===
The application is built in the context of the course Developing **Data Products** of the Coursera Data Science Specialization.

## Application : BODY MASS INDEX 

* The app developed for the first part of the assignment is available at:

[https://suparnasen.shinyapps.io/DataProductProjectApp/](https://suparnasen.shinyapps.io/DataProductProjectApp/) 

* Source code for ui.R and server.R files are available at:

[https://github.com/datascience122015/ShinyApp](https://github.com/datascience122015/ShinyApp)

---

===
Understanding BMI
===

The body mass index (BMI) is a statistic developed by Adolphe Quetelet in the 1900's for evaluating body mass. It is not related to gender and age. It uses the same formula for men as for women and children.

The body mass index is calculated based on the following formula:

Bodyweight in kilograms divided by height in meters squared

$$BMI = \frac{x KG}{y Meter *  y Meter}`$$

Where:
x=bodyweight in KG
y=height in m

The result is in kilograms by meters squared, or KG/M2. In most cases, people simply leave out this designation. It doesn't have any real significance because humans don't equate to real mathematical squares as the formula might suggest.

--- 

===
Functionality   
===

**Inputs** to the System:

1. User Name
2. Age
3. Height
4. Weight

**Expected output** from the System:

1. Calculated BMI
2. System registered input data 
3. Recommendation from the system

---

===
Technical Details
===
The application is fully contained in the files **server.R and ui.R**, and the user input widgets are monitored for changes.

Once a change is detected, a segment of code is executed, making the calculations requested, and the screen is updated.

To show information to the user there's two sections available. The first one will always show the date the user has inserted, and the second one will show the results of the calculations made.

---

===
Shiny App
===
<!--html_preserve--><div class="shiny-input-panel">
<div class="shiny-flow-layout">
<div>
<div class="form-group shiny-input-container">
<label for="name">Name:</label>
<input id="name" type="text" class="form-control" value="Hello!!!"/>
</div>
</div>
<div>
<div class="form-group shiny-input-container">
<label for="age">Age (greater than 18):</label>
<input id="age" type="number" class="form-control" value="19" min="19" max="95" step="1"/>
</div>
</div>
<div>
<div id="sex" class="form-group shiny-input-radiogroup shiny-input-container">
<label class="control-label" for="sex">Gender:</label>
<div class="shiny-options-group">
<div class="radio">
<label>
<input type="radio" name="sex" value="male" checked="checked"/>
<span>Male</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="sex" value="female"/>
<span>Female</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="sex" value="neutral"/>
<span>Neutral</span>
</label>
</div>
</div>
</div>
</div>
<div>
<div class="form-group shiny-input-container">
<label class="control-label" for="height">Height in centimeter</label>
<input class="js-range-slider" id="height" data-min="150" data-max="250" data-from="150" data-step="1" data-grid="true" data-grid-num="10" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="1" data-drag-interval="true" data-data-type="number"/>
</div>
</div>
<div>
<div class="form-group shiny-input-container">
<label class="control-label" for="weight">Body Weight in Kilogram</label>
<input class="js-range-slider" id="weight" data-min="50" data-max="200" data-from="50" data-step="1" data-grid="true" data-grid-num="10" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="0.666666666666667" data-drag-interval="true" data-data-type="number"/>
</div>
</div>
</div>
</div><!--/html_preserve-->

---

===
THANK YOU
===

