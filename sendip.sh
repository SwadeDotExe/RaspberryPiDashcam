# Discord Channel Webhook
WEBHOOK_URL="https://discord.com/api/webhooks/******************************************"

# Get IP address
IP=$(curl -s https://ipinfo.io/ip)

# Create message
PAYLOAD=" { \"content\": \"The current public IP address is: $IP\" }"

# Send message
curl -X POST -H 'Content-Type: application/json' -d "$PAYLOAD" "$WEBHOOK_URL"
