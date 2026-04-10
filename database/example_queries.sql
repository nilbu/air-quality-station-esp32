-- Insert user message
INSERT INTO messages (user_id, role, content, embedding)
VALUES ($1, 'user', $2, $3);

-- Insert assistant message
INSERT INTO messages (user_id, role, content, embedding)
VALUES ($1, 'assistant', $2, $3);

-- Retrieve most similar previous messages
SELECT content, role, (embedding <-> $2) AS distance
FROM messages
WHERE user_id = $1
ORDER BY embedding <-> $2
LIMIT 5;
