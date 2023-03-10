DROP TABLE IF EXISTS public.photos;
DROP TABLE IF EXISTS public.characteristics;
DROP TABLE IF EXISTS public.characteristic_reviews;
DROP TABLE IF EXISTS public.reviews;

CREATE TABLE public.reviews (
	review_id int GENERATED ALWAYS AS IDENTITY,
	product_id int NOT NULL,
  rating int NOT NULL,
	date bigint NOT NULL,
	summary varchar(255) NOT NULL,
	body text NOT NULL,
	recommend boolean NOT NULL,
	reported boolean NOT NULL,
	reviewer_name varchar(255) NOT NULL,
	reviewer_email varchar(255) NOT NULL,
	response varchar (255) NOT NULL,
	helpfulness int NOT NULL,
	CONSTRAINT reviews_pk PRIMARY KEY (review_id)
);

CREATE TABLE public.photos (
	id int GENERATED ALWAYS AS IDENTITY,
	review_id int NOT NULL,
	url varchar(255) NOT NULL,
	CONSTRAINT photos_pk PRIMARY KEY (id),
	CONSTRAINT photos_fk FOREIGN KEY (review_id) REFERENCES public.reviews(review_id)
);

CREATE TABLE public.characteristics (
	id int GENERATED ALWAYS AS IDENTITY,
	product_id int NOT NULL,
	name varchar(255) NOT NULL,
	CONSTRAINT characteristics_pk PRIMARY KEY (id)
);

CREATE TABLE public.characteristic_reviews (
	id int GENERATED ALWAYS AS IDENTITY,
	characteristics_id int NOT NULL,
	review_id int NOT NULL,
	value int NOT NULL,
	CONSTRAINT characteristic_reviews_pk PRIMARY KEY (id),
	CONSTRAINT characteristic_reviews_fk FOREIGN KEY (review_id) REFERENCES public.reviews(review_id)
);
