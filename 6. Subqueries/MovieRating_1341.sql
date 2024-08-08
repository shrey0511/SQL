-- https://leetcode.com/problems/movie-rating/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
(Select name as results from Users JOIN MovieRating ON Users.user_id = MovieRating.user_id
group by name
order by count(*) desc, name
limit 1)

Union all

(Select title as results from MovieRating JOIN Movies USING(movie_id)
where extract(year_month from created_at) = 202002
group by title
order by avg(rating) desc , title
limit 1)