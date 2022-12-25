https://app.patika.dev/ibrahimsezgin
/*
1-film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title, description FROM film;
Bütün satırları göstermek yerine sadece uniq değerleri göstermek için böyle kullanabiliriz.
SELECT DISTINCT title, description FROM film;
*/


/*
2-film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük 
olma koşullarıyla sıralayınız.
SELECT * FROM film 
WHERE (length>60 AND length<75)
film tablosunda bulunan length'in 60'dan büyük ve 75'den küçük olan tüm sütunları seçtikten sonra 
ORDER BY ile length küçükten büyüğe, rental_rate büyükten küçüğe olacak şekilde sıralayabiliriz.
SELECT * FROM film 
WHERE (length>60 AND length<75)
ORDER BY length ASC, rental_rate DESC
*/


/*
3-film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 
olma koşullarıyla sıralayınız.
SELECT * FROM film
WHERE rental_rate=0.99 AND (replacement_cost=12.99 OR replacement_cost=28.99)
*/

/*
4-customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki 
değeri nedir?
SELECT last_name FROM customer
WHERE first_name = 'Mary';



customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değerini
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
ile değiştirebiliriz.
*/


/*
5-film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 
OLMAYAN verileri sıralayınız.
SELECT * FROM film
WHERE length<50 AND (rental_rate=2.99 OR rental_rate=4.99)
film tablosunda bulunan length'in 50'den küçük, rental_rate'in 2.99 veya 4.99'a eşit olan tüm sütunları 
seçtikten sonra ORDER BY ile length küçükten büyüğe, rental_rate büyükten küçüğe olacak şekilde sıralayabiliriz.
SELECT * FROM film
WHERE length<50 AND (rental_rate=2.99 OR rental_rate=4.99)
ORDER BY length ASC, rental_rate DESC
*/
