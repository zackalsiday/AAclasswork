PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id  INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    users_id INTEGER NOT NULL,

    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,

    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE replies (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    replies_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,

    FOREIGN KEY (questions_id) REFERENCES questions(id),
    FOREIGN KEY (replies_id) REFERENCES replies(id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE question_like (
    id INTEGER PRIMARY KEY,
    questions_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,

    FOREIGN KEY (users_id) REFERENCES user(id),
    FOREIGN KEY (questions_id) REFERENCES questions(id)
);


INSERT INTO 
    users (fname , lname)
VALUES
    ('Jerry' , 'Phan'),
    ('Zack', 'Alsiday');

INSERT INTO 
    questions (title, body , users_id)
VALUES
    ('testq', 'testing if question added', (SELECT id FROM users WHERE fname = 'Jerry'));
