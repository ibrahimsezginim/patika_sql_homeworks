https://app.patika.dev/ibrahimsezgin
/*
1-test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, 
email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employe(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	birthday DATE,
	email VARCHAR(50)
);
*/


/*
2-Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
*/


/*
3-Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employe
SET first_name = 'Kai'
WHERE first_name = 'Niki'

UPDATE employe
SET birthday = '1997-05-13'
WHERE first_name = 'Tanya';

UPDATE employe
SET email = 'amberhahahah@asfdasdf.com'
WHERE first_name = 'Amber'
*/


/*
4-Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employe WHERE email='amberhahahah@asfdasdf.com';
DELETE FROM employe WHERE birthday='1997-05-13';
DELETE FROM employe WHERE first_name='Kai';
*/

/*
Veritabanında istediğimiz tabloyu silmek için DELETE FROM table_name; kullanabiliriz
*/
