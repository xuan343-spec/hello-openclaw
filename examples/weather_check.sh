#!/bin/bash
# 天气查询示例 — 由 OpenClaw weather skill 驱动

CITY="${1:-Shanghai}"
echo "🌤️ 查询 $CITY 天气..."
curl -s "wttr.in/${CITY}?format=%l:+%c+%t+(feels+like+%f),+%w+wind,+%h+humidity"
echo ""
