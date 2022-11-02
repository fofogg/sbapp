export PORT=${PORT-8080}
export UUID=${UUID-cb2ef9cb-fc3a-4f42-a206-0a59919a38d6}

echo '
 {
  "log": {
    "disabled": true
  },
    "inbounds": [
        {
            "type": "vmess",
            "listen": "::",
            "listen_port": '$PORT',
            "users": [
                {
                    "uuid": "'$UUID'",
                    "alterId": 0
                }
            ],
            "transport": {
                "type": "ws",
                "path": "/vmess",
                "early_data_header_name": "Sec-WebSocket-Protocol"
            }
        }
    ]
}
' > config.json

chmod +x app && ./app run
