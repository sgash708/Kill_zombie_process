# KILL_zombie_process

cronなどで実行したシェルスクリプトやコマンドがゾンビとして残る場合があります。

```bash
[hoge@hogehost ~]$ ps -ef | grep defunct
root       338   334  0  6月30 ?      00:00:00 [sh] <defunct>
root      3127  3126  0  6月30 ?      00:00:00 [sh] <defunct>
root      5791  5789  0  6月30 ?      00:00:00 [sh] <defunct>
root      8468  8466  0  6月30 ?      00:00:00 [sh] <defunct>
root     11150 11146  0  6月30 ?      00:00:00 [sh] <defunct>
# 以下略 #
```

それを解決するために、作りました。

# ref

https://qiita.com/sgash708/items/acc850ee45d9190874bd