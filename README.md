### radcast-docker
[radcast](https://github.com/omiso46/radcast)をdocker-composeで動くようにした。  
`docker-compose up`コマンド一発で起動できることを目指したので、docker-composeを利用している。

### 動作環境
- Docker version 19.03.8
- docker-compose version 1.27.4

### 使用方法
`git clone https://github.com/eginoy/radcast-docker.git`  
`cd radcast-docker`  
`nohup docker-compose up &`  
ログの吐き出し、バックグラウンド実行するため`nohup`を使用している。

### その他
- コンテナ初回起動時(`config.json`が存在しない場合)に録音スケジュールファイル`config.json`を生成している。
- portは3355番を使用している。
- 録音ファイルは`recorded`ファイルに出力される。
- 録音スケジュールファイル`config.json`を更新したら、コンテナを再起動すること。`cd radcast-docker && docker-compose restart`

### LICENSE
MIT License