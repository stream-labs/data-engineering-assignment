## Streamlabs Data Engineering Take Home Assignment

Hi there! We are happy you are interested in joining the data team here at Streamlabs. We are on a mission of building tools to help content creators around the world grow, and we are excited to have you on board.

We work fast, fail fast, and iterate fast to keep up with the fast pace of this industry, and we are looking for a talented data engineer to join this process with us. You will work to capture data from across our range of applications and products, reaching millions of users. You will help us leverage this data to deliver key insights to the product team.

We believe it is important that our assessment of your skills matches the technical challenges you will face as an engineer at Streamlabs. In this assignment you will be asked to work through 2 problems, both of which utilize schemas extremely similar to what we use in production to run our business.

## Problem 1

Please familiarize yourself with the schema defined in the file `problem1-schema.sql` in this repository.

This schema is an example of a simple event tracking system for desktop live streaming software.

Please write one or more SQL User-Defined Functions to aggregate this table in a way that it can be used to generate the following reports:
- Monthly Active Users based on `stream_start` and `app_start` events
- Daily Active Users based on the same
- Daily count of new users
- User cohort retention based on `stream_start` and `app_start`

Please note, you are to provide the aggregated data necessary to generate these reports.  Your output does not necessarily need to generate these reports in their final form.

Your solution should include SQL statements that define your UDF(s).

## Problem 2

Please familiarize yourself with the schema defined in the file `problem2-schema.sql` in this repository.

This schema is simple model of the Streamlabs live streaming tools service. Users can use the service to stream to any streaming platform. Users can receive donations from their viewers on the platform. Streamlabs is free to use, but there is a premium subscription service that provides additional features and benefits.

This schema contains the following tables:
- `paid_user_subscriptions` represents a user subscription to the premium service.
- `stream_logs` represents user streaming activity, one of the primary activities that an active user would do in the app.
- `_donations` represents a donation that a user has received from somebody watching their stream.

Assume that each of these 3 tables are sitting in different databases. Your task is to design an ETL pipeline for moving this data into a data warehouse. The data should be stored in the warehouse with a schema you design that should be optimized for analyzing and predicting churn of paid users.

Please include the following deliverables:
- Scripts for the ETL job
- A description of which cloud tools you would use for the ETL pipeline and data warehouse, explaining your decisions
- Architecture diagram containing the ETL pipeline and data warehouse

## Fine Details

We use MySQL 5.7. If in doubt, assume that the provided schemas were meant for MySQL 5.7.

When providing solutions that contain SQL, please provide your solution in MySQL dialect.

## What we are looking for

We are looking for a strong understanding of SQL fundamentals. We are also looking for your ability to understand the business/product implications of a schema. The solutions to this assignment (and especially to Problem 2) are extremely open ended. We are not looking for a specific solution/tool/cloud-service/framework. We are looking for you to make architectural decisions on how to structure things, and be able to describe/justify those decisions and why you made them.

## Documentation & Thought Process

- Please try to comment your code as much as you think is needed.

- Please include a `README.md` file containing any instructions/details/context we should know when reviewing your submission. Please also include answers to the following questions.

```
- How long did it take you to complete this assignment?


- What about this assignment did you find most challenging?


- What about this assignment did you find unclear?


- Do you feel like this assignment was an appropriate level of difficulty?
```

## Questions

Please email us if you have any questions along the way. We will try our best to help guide you through any confusions. Feel free to make assumptions and document them as you go as well.

## Submission

Please submit your completed assignment via email to the recruiter who sent it to you. You can submit your assignment as a zip file attachment, or you can push it to a GitHub repository and include a link to the respository. We want to thank you again for your time and for your interest in joing the data team at Streamlabs!
