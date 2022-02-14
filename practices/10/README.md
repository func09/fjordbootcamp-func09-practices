# doker-ssh-sample

## 手元のPCの公開鍵から authorized_keys を用意

```
$ cp ~/.ssh/client_rsa.pub containers/ssh/authorized_keys
```

## SSHサーバのコンテナをビルド

```
$ docker compose build --build-arg USERNAME=func09 --build-arg PASSWORD=password
```

## sshd を起動する

```
$ docker compose up
```

## 手元のPCからSSHでコンテナにログイン

```
$ ssh func09@localhost -p 10022 -i ~/.ssh/client_rsa
```

## Memo

コンテナに直接入って作業したいとき

```
# CONTAINER ID は docker ps で調べて
docker exec -it a2b556165699 bash
```
