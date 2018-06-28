-- user1's friends on Facebook (METHOD 1)
SELECT 'users'.'name' FROM 'users'
INNER JOIN 'users_users' ON 'users'.'id' = 'users_users'.'user2_id'
WHERE 'user1_id' = 3;

SELECT 'users'.'name' FROM 'users'
INNER JOIN 'users_users' ON 'users'.'id' = 'users_users'.'user1_id'
WHERE 'user2_id' = 3;

-- user1's friends on Facebook (METHOD 2)
SELECT name FROM users 
INNER JOIN users_users ON users.id = users1_id OR users.id = users2.id 
WHERE ((users_users.users1_id = 3 OR users_users.users2_id = 3) AND users.id != 3);

-- every user in a Facebook group 1
SELECT 'memberId_users_id' FROM 'groups_users'
WHERE 'group_id' = 1;

-- find all comments under a post
-- BEGIN
--     FOR 'comments'.'comments_id' IN (SELECT 'comments'.'comments_id' FROM 'comments' 
--                 INNER JOIN 'posts' ON 'posts'.'id' = 'comments'.'posts_id'
--                 WHERE 'comments'.'posts_id' = 1)
--     LOOP
--         SELECT 'comments'.'comments_id' FROM 'comments' 
--                 WHERE 'comments'.'posts_id' = 
--     END LOOP;

-- END 
