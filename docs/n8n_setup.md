# n8n Setup

This project includes an example n8n workflow for Telegram-based interaction, OpenWeather enrichment and conversational memory.

## Workflow file

Use the sanitized workflow export from the `n8n` folder.

## Setup steps

1. Import the workflow JSON into n8n.
2. Configure credentials for:
   - Telegram
   - Google Sheets
   - OpenAI
   - OpenWeather
   - PostgreSQL
3. Replace placeholder values in the workflow:
   - `YOUR_GOOGLE_SHEET_ID`
   - `YOUR_TELEGRAM_CHAT_ID`
   - `YOUR_CITY`
4. Make sure the PostgreSQL database is initialized with `database/init.sql`.
5. Test the workflow with a Telegram text message.

## Notes

The workflow can:
- read the latest sensor data from Google Sheets
- enrich responses with OpenWeather data
- transcribe voice messages
- store and retrieve conversational context with PostgreSQL and pgvector
