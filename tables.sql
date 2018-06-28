-- table for users
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
);

-- joining friends table between users
CREATE TABLE IF NOT EXISTS friends (
    users_id integer,
    friends_id integer,
    friendDate datetime
);

-- table for posts
CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    postType TEXT,
    textContent TEXT,
    postLink TEXT,
    postDate datetime
);

-- table for likes
CREATE TABLE IF NOT EXISTS likes (
    id SERIAL PRIMARY KEY,
    likeDate datetime,
    posts_id integer,
    comments_id integer
);

-- table for comments
CREATE TABLE IF NOT EXISTS comments (
    id SERIAL PRIMARY KEY,
    commentDate datetime,
    posts_id integer,
    comments_id integer,
    textContent TEXT
);

-- table for groups
CREATE TABLE IF NOT EXISTS groups (
    id SERIAL PRIMARY KEY,
    name TEXT,
    creatorId_users_id integer
);

-- joining table for groupMembers
CREATE TABLE IF NOT EXISTS groupMembers (
    groups_id,
    memberId_users_id integer
);

-- table for list of groupChats
CREATE TABLE IF NOT EXISTS groupChats (
    id SERIAL PRIMARY KEY,
    name TEXT
);


-- joining table for list of groupChats
CREATE TABLE IF NOT EXISTS joinGroupChats (
    groupChats_id integer,
    users_id integer
);

-- table for list of messages
CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    groupChats_id integer,
    sender_id integer,
    textContent TEXT,
    timeSent datetime
);

