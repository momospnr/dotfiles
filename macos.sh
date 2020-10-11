#!bin/sh

##### BASE #####
# フリーズすると自動的に再起動
sudo systemsetup -setrestartfreeze on
# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# 時計アイコンクリック時にOSやホスト名ipを表示する
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Bluetoothヘッドフォン/ヘッドセットの音質を向上させる
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


##### Dock #####
# 最近使ったアプリケーションを非表示
defaults write com.apple.dock show-recents -bool false


##### Finder #####
# アニメーションを無効化する
defaults write com.apple.finder DisableAllAnimations -bool true
# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false


##### Mail #####
# 自動スペルチェックを無効化
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"


###### Terminal ######
# UTF-8のみを使用する
defaults write com.apple.terminal StringEncodings -array 4


###### Kill all affected applications #####
for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"Mail" \
	"Messages" \
	"Photos" \
	"Safari" \
	"SizeUp" \
	"Spectacle" \
	"SystemUIServer" \
	"Terminal" \
	"Transmission" \
	"Twitter" \
	"iCal"; do
	killall "${app}" &> /dev/null
done
echo "these changes required a logout or restart to take effect"
