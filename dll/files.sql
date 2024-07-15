USE edu;

CREATE OR REPLACE TABLE files 
(
	`no` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`type` INT NOT NULL,
	`domain` VARCHAR(50) NOT NULL,
	`path` VARCHAR(100) NOT NULL,
	`del` BOOLEAN DEFAULT (0),
	`cnt` INT DEFAULT (0)
);

INSERT INTO files (`type`, `domain`, `path`) VALUE (1, 'https://cdn.pixabay.com', '/photo/2023/06/14/06/22/cat-8062388_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (1, 'https://cdn.pixabay.com', '/photo/2019/11/08/11/56/kitten-4611189_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (1, 'https://cdn.pixabay.com', '/photo/2023/06/29/12/28/cats-8096304_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (2, 'https://cdn.pixabay.com', '/photo/2020/03/31/19/20/dog-4988985_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (2, 'https://cdn.pixabay.com', '/photo/2016/02/26/16/32/bulldog-1224267_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (2, 'https://cdn.pixabay.com', '/photo/2022/07/07/07/25/dog-7306691_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (3, 'https://cdn.pixabay.com', '/photo/2018/02/18/13/03/cute-3162209_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (3, 'https://cdn.pixabay.com', '/photo/2016/03/05/22/54/animal-1239398_1280.jpg');
INSERT INTO files (`type`, `domain`, `path`) VALUE (4, 'https://cdn.pixabay.com', '/photo/2018/02/15/09/12/underwater-3154726_1280.jpg');

COMMIT;

SELECT * FROM files;

