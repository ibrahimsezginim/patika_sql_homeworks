/*
INNER JOIN için aşağıdaki syntax kullanılıyor.
SELECT istediğimiz sütunlar, 
FROM (tablo_1 = buraya yazacağımız tablonun adı içinde foreign key olan tablo adı olmalı)
INNER JOIN (buraya yazacağımız tablonun adı içinde primary key olan tablo adı olmalı) 
ON (tablo_1.foreignKeyOlanDeğer = tablo_2.primaryKeyOlanDeğer)
*/


/*
1-city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city.city, country.country FROM city
INNER JOIN country ON city.country_id = country.country_id
*/


/*
2-customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT payment.payment_id, customer.first_name, customer.last_name 
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
*/


/*
3-customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id
*/


/*
Burada da müşterinin ad-soyadı bilgisine göre toplam siparişlerine ne kadar ödeme yaptığını(SUM(amount)), kaç tane ürün sipariş ettiğineCOUNT(payment_id) ve ortalama ne kadar ödediğine(SUM(amount)/COUNT(payment_id)) göstermeye çalıştım. 
SELECT SUM(amount)/COUNT(payment_id) AS OrtalamaSiparişFiyatı, SUM(amount), COUNT(payment_id), first_name, last_name
FROM payment INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY first_name, last_name
ORDER BY OrtalamaSiparişFiyatı DESC
*/