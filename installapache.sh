dialog --title "訊息視窗" --msgbox "歡迎進行apache2安裝" 10 50
dialog --title "確認apache2 shellscript內容" --textbox installapache1.sh 10 60
dialog --title "選單模式" --menu "請選擇" 10 50 1 "1" "進行安裝"
sudo apt install apache2 -y &> /dev/null&& echo 'apache2 installed.'
wget --progress=bar:force:noscroll https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip 2>&1 | \
stdbuf -o0 awk 'BEGIN{FS="[[:space:]]+|\\r"} /[0-9]+%/ {gsub(/%/, "", $2); print $2}' | \
dialog --title "下載進度" --gauge "正在下載 oxer.zip..." 10 70 0
sleep 5
dialog --title "下載進度" --gauge "正在下載 oxer.zip..." 10 70 100
unzip oxer.zip
sudo mv oxer-html/* /var/www/html/
dialog --title "完成" --msgbox "恭喜安裝成功可以瀏覽網站了" 10 50
