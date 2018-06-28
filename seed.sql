-- content for table for users
INSERT INTO users (name, email) VALUES ('sabs', 'sabs@ga.com'); --1
INSERT INTO users (name, email) VALUES ('gabs', 'gabs@ga.com'); --2
INSERT INTO users (name, email) VALUES ('habs', 'habs@ga.com'); --3
INSERT INTO users (name, email) VALUES ('jabs', 'jabs@ga.com'); --4
INSERT INTO users (name, email) VALUES ('kabs', 'kabs@ga.com'); --5
INSERT INTO users (name, email) VALUES ('labs', 'labs@ga.com'); --6
INSERT INTO users (name, email) VALUES ('tabs', 'tabs@ga.com'); --7
INSERT INTO users (name, email) VALUES ('uabs', 'uabs@ga.com'); --8


-- content for joining friends table between users
INSERT INTO friends (users_i, friends_id) VALUES (1,2);
INSERT INTO friends (users_i, friends_id) VALUES (1,3);
INSERT INTO friends (users_i, friends_id) VALUES (1,4);

-- content for table for posts
INSERT INTO posts (postType, textContent, postLink) VALUES ('video', 'yay1', 'yay1.com'); --1
INSERT INTO posts (postType, textContent, postLink) VALUES ('status', 'yay2', 'yay2.com'); --2
INSERT INTO posts (postType, textContent, postLink) VALUES ('image', 'yay3', 'yay3.com'); --3
INSERT INTO posts (postType, textContent, postLink) VALUES ('share', 'yay4', 'yay4.com'); --4

-- content for table for likes
INSERT INTO likes (posts_id, comments_id, users_id) VALUES (1, 0, 3);
INSERT INTO likes (posts_id, comments_id, users_id) VALUES (0, 4, 5);
INSERT INTO likes (posts_id, comments_id, users_id) VALUES (0, 5, 6);

-- content for table for comments
INSERT INTO comments (posts_id, comments_id, textContent, users_id) VALUES (1, 0, 'hey!', 3); --1
INSERT INTO comments (posts_id, comments_id, textContent, users_id) VALUES (0, 1, 'hey there too!', 2); --2
INSERT INTO comments (posts_id, comments_id, textContent, users_id) VALUES (4, 0, 'hey!', 8); --3
INSERT INTO comments (posts_id, comments_id, textContent, users_id) VALUES (0, 3, 'hey!', 3); --4

-- content for table for groups
INSERT INTO groups (name, creatorId_users_id) VALUES ('newGroup', 3); --1
INSERT INTO groups (name, creatorId_users_id) VALUES ('newGroup2', 4); --2
INSERT INTO groups (name, creatorId_users_id) VALUES ('newGroup3', 5); --3

-- content for joining table for groupMembers
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (1, 1);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (1, 2);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (1, 6);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (2, 1);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (2, 2);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (2, 3);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (3, 1);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (3, 2);
INSERT INTO groupMembers (groups_id, memberId_users_id) VALUES (3, 3);

-- content for table for list of groupChats
INSERT INTO groupChats (name) VALUES ('created by 1, with ALL'); --1
INSERT INTO groupChats (name) VALUES ('created by 2, with 3-8'); --2
INSERT INTO groupChats (name) VALUES ('created by 3, with 5-7'); --3
INSERT INTO groupChats (name) VALUES ('created by 4, with 1-3'); --4
INSERT INTO groupChats (name) VALUES ('created by 5, with 4-8'); --5

-- content for joining table for list of groupChats
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 1);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 2);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 3);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 4);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 5);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 6);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 7);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (1, 8);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 2);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 3);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 4);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 5);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 6);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 7);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (2, 8);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (3, 3);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (3, 5);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (3, 6);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (3, 7);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (4, 4);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (4, 1);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (4, 2);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (4, 3);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (5, 5);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (5, 4);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (5, 6);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (5, 7);
INSERT INTO joinGroupChats (groupChats_id, users_id) VALUES (5, 8);

-- content for table for list of messages
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 1, 'hi i am 1');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 2, 'hi i am 2');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 3, 'hi i am 3');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 4, 'hi i am 4');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 5, 'hi i am 5');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 6, 'hi i am 6');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 7, 'hi i am 7');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (1, 8, 'hi i am 8');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 2, 'hi i am 2');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 3, 'hi i am 3');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 4, 'hi i am 4');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 5, 'hi i am 5');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 6, 'hi i am 6');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 7, 'hi i am 7');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (2, 8, 'hi i am 8');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (3, 3, 'hi i am 3');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (3, 5, 'hi i am 5');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (3, 6, 'hi i am 6');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (3, 7, 'hi i am 7');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (3, 8, 'hi i am 8');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (4, 1, 'hi i am 1');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (4, 2, 'hi i am 2');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (4, 3, 'hi i am 3');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (4, 4, 'hi i am 4');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (5, 4, 'hi i am 4');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (5, 5, 'hi i am 5');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (5, 6, 'hi i am 6');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (5, 7, 'hi i am 7');
INSERT INTO messages (groupChats_id, sender_id, textContent) VALUES (5, 8, 'hi i am 8');




