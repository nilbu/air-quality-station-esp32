# Database Setup

This project uses PostgreSQL with the `pgvector` extension to store conversational memory.

## Requirements

- PostgreSQL
- pgvector extension

## Initialization

Run the SQL script from the `database` folder:

```bash
psql -U YOUR_USER -d YOUR_DATABASE -f database/init.sql
```
## What it creates

The script enables the pgvector extension and creates the messages table used to store:

user messages
assistant responses
embeddings for similarity search
timestamps

##Notes

The workflow uses this table to retrieve relevant previous messages and build context for follow-up questions.
