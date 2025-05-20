<a name="top"/>

# autorename
Monitor the path and automatically rename the new file with counter.

特定のディレクトリを監視し、そのパスにファイルが追加されることを検知した後、自動的にカウンター付きのファイル名に名前を変更するためのコマンドです。

## 目次 Index
- [English Guide](#english)
- [日本語解説](#japanese)

------
<a name="english"/>

# English Guide
[Go to top of the page.](#top)

## Install autorename
Step 1: Add official tap
```zsh
brew tap lilyharuna/autorename
```

Step 2: Install autorename:
```zsh
brew install autorename
```
------
## Update autorename
Step 1: Update tab
```zsh
brew update
```

Step 2: Update autorename
```zsh
brew upgrade autorename
```
------
## Uninstall autorename
Step 1: uninstall autorename
```zsh
brew uninstall autorename
```

Step 2: delete the official tap
```zsh
brew untap lilyharuna/autorename
```
------
## The reason you have to use this command
| ![](docs/withoutcommand.gif) | ![](docs/withcommand.gif) |
|:---:|:---:|
| Without this command | With this command |
| ![](docs/withoutcommand.png) | ![](docs/withcommand.png) |
| Without this command. File name and order are randomized. | With this command. File name is patterned and displayed in order. |

Many internet services automatically rename images into random strings, including Twitter, Bluesky, Note, and many others.
This command allows you to maintain the download order by assigning sequential counters when saving images from these services.

Although initially designed for image files, this system is also compatible with video files and many other file types. It can handle environments where multiple file formats, such as WebP and PNG, are mixed, ensuring that all files are renamed in sequential order.

Since this command relies only on standard system packages, it can be used seamlessly in most environments.

------
## Usage
autorename monitors the specified directory and automatically renames newly added files based on a counter.

**Basic usage:**
```zsh
autorename <directory_to_watch> [-p prefix] [-t extension] [-c digits] [-s start] [-e end]
```

**Options:**

| Option | Description |
|--------|------------|
| `-p, --prefix <name>` | Set the prefix for renamed files (default: `*(Every file formats)`) |
| `-t, --type <extension>` | Specify file extensions to monitor (can be used multiple times) |
| `-c, --counter <digits>` | Set the number of digits for numbering (default: `2`) |
| `-s, --start <number>` | Set the starting number for the counter (default: `1`) |
| `-e, --end <number>` | Stop the script when the counter reaches this value |

## Examples:
### **1. Monitor `~/Downloads`, rename `.png` files with default settings:**
```zsh
autorename ~/Downloads -t png
```

**Example Output:**  
img01.png  
img02.png  
img03.png  
...

### **2. Use a custom prefix (`photo_`) and start from 10:**
```zsh
autorename ~/Pictures -t jpg -p photo_ -s 10
```

**Example Output:**  
photo_10.jpg  
photo_11.jpg  
photo_12.jpg  
...

### **3. Monitor multiple file types (`.png` and `.jpg`), stop at 20:**
```zsh
autorename ~/Images -t png -t jpg -e 20
```

**Example Output:**  
img01.png  
img02.jpg  
img03.png  
...  
(img20.jpg reached, script exits)

### **4. Use 3-digit numbering format (`001`, `002`, etc.):**
```zsh
autorename ~/Downloads -t png -c 3
```

**Example Output:**  
img001.png  
img002.png  
img003.png  
...

---

## Notes:
- If `-e` is not specified, the script **runs indefinitely** until manually stopped with `Ctrl + C`(`^C`).  
- To monitor multiple file types, use `-t` multiple times (`-t png -t jpg`). To monitor every file types, do not type the `-t` option.
- If -e (end counter) is lower than -s (start counter), the -e counter will be ignored and the command will not be automatically terminated. To stop the command, enter `Ctrl + C`(`^C`) to force the command to exit.
-----
<a name="japanese"/>

# 日本語解説
[ページの最上部に移動](#top)

## autorenameのインストール方法
Step 1: Tapを追加
```zsh
brew tap lilyharuna/autorename
```

Step 2: autorenameをインストール
```zsh
brew install autorename
```
------
## autorenameのアップデート方法
Step 1: Tabを更新
```zsh
brew update
```

Step 2: autorenameをアップグレード
```zsh
brew upgrade autorename
```
------
## autorenameを削除する方法
Step 1: autorenameを削除
```zsh
brew uninstall autorename
```

Step 2: Tapを削除
```zsh
brew untap lilyharuna/autorename
```
------
## このコマンドを使うべき理由
| ![](docs/withoutcommand.gif) | ![](docs/withcommand.gif) |
|:---:|:---:|
| コマンド未使用 | コマンドを使ったら |
| ![](docs/withoutcommand.png) | ![](docs/withcommand.png) |
| ファイル名がランダムで、順番もぐちゃぐちゃ | ファイル名がパターン化され、保存順番に表示される |

多くのインターネットサービスは、画像を勝手にランダムな文字列に変換してしまいます。TwitterやBluesky、Noteやその他多数…
このコマンドは、それらのサービスから画像を保存する際、カウンターに従ってダウンロードの順番がわかるように指定できます。
画像ファイルを対象に作られたコマンドですが、このシステムは画像だけでなく、動画ファイルやその他の多くのファイルにも対応可能で、さらにwebpやpngなどの多くのファイルフォーマットが混在している環境でもそのすべてのファイルを連番でまとめることができます。
こちらのコマンドはごく一般的なパッケージのみを使用しているため、多くの環境で問題なく使用できます。

------
## 使い方
autorenameは、指定したディレクトリに新しく追加されたファイルを監視し、そのファイルが指定された拡張子の場合、カウンターに従ってファイルの名前を更新します。

**基本の使い方:**
```zsh
autorename <directory_to_watch> [-p prefix] [-t extension] [-c digits] [-s start] [-e end]
```

**オプション:**

| オプション | 解説 |
|--------|------------|
| `-p, --prefix <name>` | ファイル名変更時に使うプリフィックスを設定します。オプションがない場合は、デフォルトとして「img」が使われます。 |
| `-t, --type <extension>` | 名前を変更したいファイル拡張子を設定できます。ファイル拡張子は複数指定でき、指定されてない場合は全てのファイルフォーマットを対象とします。 |
| `-c, --counter <digits>` | ファイルの名前変更時に使うカウンターの桁数を設定できます。デフォルトとしては2桁の数字(01, 02, 03...99)を使用します。 |
| `-s, --start <number>` | カウンターの開始番号を指定できます。デフォルトでは「1」からカウンターが開始されます。 |
| `-e, --end <number>` | コマンドを終了させるカウンターを指定できます。 |

## 使い方の例:
### **1. `~/Downloads`フォルダーを監視し、`.png`拡張子が付くファイルをデフォルトの設定でリネームする方法:**
```zsh
autorename ~/Downloads -t png
```
または、pngはデフォルトの拡張子として設定されているため、以下のようにも設定できます。
```zsh
autorename ~/Downloads
```

**この場合の出力:**  
img01.png  
img02.png  
img03.png  
...

### **2. プリフィックスをカスタマイズし、さらにカウンターを10から開始させる方法:**
```zsh
autorename ~/Pictures -t jpg -p photo -s 10
```
ここでは、`~/Pictures`フォルダーを監視し、プリフィックスとしてphotoを使用、さらにjpgの拡張子を対象に、カウンター10から開始しています。

**この場合の出力:**  
photo10.jpg  
photo11.jpg  
photo12.jpg  
...

### **3. 複数のファイル拡張子を監視し、さらにカウンターが20に達した時自動的にコマンドを停止:**
```zsh
autorename ~/Images -t png -t jpg -e 20
```
ここでは、`~/Images`フォルダーを監視し、pngおよびjpg拡張子を対象に、カウンターが20に達成したらコマンドが自動的に停止するようになっています。

**この場合の出力:**  
img01.png  
img02.jpg  
img03.png  
...  
img19.png
img20.jpg
*(コマンドが自動的に終了され、zshシェルに戻される)*

### **4. 3桁の数字を使ってカウンターを出力(例: `001`, `002`, ...):**
```zsh
autorename ~/Downloads -t png -c 3
```

**この場合の出力:**  
img001.png  
img002.png  
img003.png  
...

---

## 注意事項:
- -e(終了カウンター)が指定されていない場合は、コマンドは**終了することなくそのファイルを監視し続けます。**コマンドを停止するためには、`Ctrl + C`(`^C`)を入力して強制的にコマンドを終了させてください。
- 複数のファイル拡張子を対象にしたい場合は、`-t`オプションを複数回入力してください。 (例: `-t png -t jpg`). 全てのファイルフォーマットを対象としたい場合は`-t`オプションを使用せずにそのまま実行してください。
- -e(終了カウンター)が-s(開始カウンター)より低い場合、-eカウンターは無視され、コマンドは自動終了されません。コマンドを停止するためには、`Ctrl + C`(`^C`)を入力して強制的にコマンドを終了させてください。
-----
