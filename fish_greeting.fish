function fish_greeting -d "what's up, fish?"
  set_color $fish_color_autosuggestion[1]
  uname -npsr
  uptime
  echo "Google hourly hot trends"
  curl -s -S http://www.google.co.jp/trends/hottrends/atom/hourly | grep "<li>" | sed -e 's/<[^>]*>//g'
  set_color normal
end
