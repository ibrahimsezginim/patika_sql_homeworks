https://app.patika.dev/ibrahimsezgin


--1-film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film 
WHERE length > (SELECT SUM(length)/COUNT(*) FROM film)



--2-film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)



--3-film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title FROM film
WHERE (rental_rate = (SELECT MIN(rental_rate) FROM film)) 
AND (replacement_cost = (SELECT MIN(replacement_cost) FROM film))



--4-payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer.customer_id, customer.first_name, customer.last_name, COUNT(payment.payment_id) 
FROM customer 
LEFT JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY(customer.customer_id)
ORDER BY COUNT(payment.payment_id) DESC
