CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE
);

CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    author_id INTEGER NOT NULL REFERENCES authors (id),
    title TEXT NOT NULL,
    content TEXT NOT NULL
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    author_id INTEGER NOT NULL REFERENCES authors (id),
    article_id INTEGER NOT NULL REFERENCES articles (id),
    content TEXT NOT NULL
);
