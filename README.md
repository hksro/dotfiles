# dotfiles

## Disable DS_Store

```
defaults write com.apple.desktopservices DSDontWriteNetworkStores True
killall Finder
```

cf. [Mac .DS_Store や ._xxx ファイルを作らない＆削除する方法 - loveMac.jp](https://lovemac.jp/9906)

## Homebrew

- Export installed formulas of Homebrew.
- Import formulas using `.Brewfilw`

Dump list of formulas using `brew bundle`. After that, you can find `.Brewfile` at `~/.Brewfile`. Transfer that file to new Devices.

```zsh
cd bin
brew-bundle-dump.sh
```

Just Execute `brew-bundle-install.sh`.

```zsh
cd bin
brew-bundle-install.sh
```

## Virtual Desktop (Mac)

- Disable Animation

System Preferences > Accessibility > Display > Display > Reduce motion

```zsh
open "x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_Display"
```

Then, check `Disable Animation`.

## Bluetooth

- Show bluetooth menu

System Preferences > Bluetooth

```zsh
open "x-apple.systempreferences:com.apple.preference.Bluetooth"
```

- [x] Sho bluetooth in menu bar

## Font: Source Han Code JP

1. Open [github.com/adobe-fonts/source-han-code-jp/releases](https://github.com/adobe-fonts/source-han-code-jp/releases)
2. Download `SourceHanCodeJP.ttc`
3. Open `SourceHanCodeJP.ttc`
4. Install font

cf.[コーディングに最適な日本語対応の等幅フォントSource Han Code JPとは - ICS MEDIA](https://ics.media/entry/7010/)
cf. [Releases · adobe-fonts/source-han-code-jp](https://github.com/adobe-fonts/source-han-code-jp/releases)

## Font: DroidSansMono Nerd Font (Optional)

This is optional step.
You can also install using Homebrew.

```
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

cf. [ryanoasis/nerd-fonts: Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts: Hack, Source Code Pro, more. Glyph collections: Font Awesome, Material Design Icons, Octicons, & more](https://github.com/ryanoasis/nerd-fonts)

## iTerm2

1. Export preference
2. Transfer plist to new device
3. Import preference

iTerm2 > Preferences > General > Preferences

You can export & imoprt after below.

- [x] Laod preferences from a custom folder or URL

```sh
sudo killall cfprefsd
```

Quit & Start iTerm

cf. [iTerm2の設定をインポート・エクスポートする方法 - Qiita](https://qiita.com/reoring/items/a0f3d6186efd11c87f1b)
cf. [iTerm の設定を共有する - Qiita](https://qiita.com/bugfire/items/c89119e42992a6142a58)
cf. [ITerm2の設定をGitHubで共有……できんやんけ！って思ってたけどそうでもなかった - めっちゃいいタイトル思いついたんだけど風呂入ったら忘れちゃった](https://ry-2718.hatenablog.com/entry/2019/04/02/021006)
cf. [plistファイルを変更・削除したらcfprefsdを実行 - Qiita](https://qiita.com/cakipy/items/2e5d03d5e063c6734b34)

## CotEditor

Manual Operation

## Visual Studio Code

1. Extensions
2. Global Settings
### Extensions

```zsh
code --list-extensions
```

```zsh
# cd VSCode/

# Check command
xargs -L 1 echo code --install-extension < extensions

# Install extensions
xargs -L 1 code --install-extension < extensions
```

cf. [VS Codeの拡張機能一覧をエクスポートするには | Hinemosu](https://www.hide10.com/archives/32354)

### Settings

```zsh
cp VSCode/User/settings.json $HOME/Library/Application\ Support/Code/User/
```

cv. [[VSCode 2022年版]サクッと簡単に環境移行 | Unity Indies](https://www.create-forever.games/vscode-env-export-import/)

## Git configuration

```
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
```

```
gh auth login
? What account do you want to log into? GitHub.com
? What is your preferred protocol for Git operations? SSH
? Generate a new SSH key to add to your GitHub account? Yes
? Enter a passphrase for your new SSH key (Optional)
? Title for your SSH key: GitHub CLI
? How would you like to authenticate GitHub CLI? Login with a web browser

! First copy your one-time code: XXXX-XXXX
Press Enter to open github.com in your browser...
✓ Authentication complete.
- gh config set -h github.com git_protocol ssh
✓ Configured git protocol
✓ Uploaded the SSH key to your GitHub account: /Users/xxxx.xxxx/.ssh/id_xxxxxxxx.pub
✓ Logged in as xxxxxxx
```

cf. [ようこそdotfilesの世界へ - Qiita](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
cf. [支給されたMacの環境をdotfilesでセットアップしてみた | DevelopersIO](https://dev.classmethod.jp/articles/joined-mac-dotfiles-customize/)

