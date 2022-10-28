export PORT=${PORT-8080}
export UUID=${UUID-1eb6e917774b4a84aff6b058577c60a5}

echo '
 {
  "log": {
    "loglevel": "debug"
  },
  "inbounds": [
    {
      "listen": "127.0.0.1",
      "port": '$PORT',
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "'$UUID'",
            "alterId": 0
          }
        ]
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
' > config.json

chmod +x sing-box && ./sing-box run
