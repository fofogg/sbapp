export PORT=${PORT-8080}
export UUID=${UUID-1eb6e917774b4a84aff6b058577c60a5}

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
