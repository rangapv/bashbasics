#! /bin/sh
f1="./sshd.config"
line20="\#PubkeyAuthentication\ yes"

line2="PubkeyAuthentication\ yes"
line21="PubkeyAcceptedKeyTypes\ \+ssh\-rsa"
line22="HostKeyAlgorithms\ \+ssh\-rsa"
line23="HostbasedAcceptedKeyTypes\ \+ssh\-rsa"
line24="AuthorizedKeysFile\ \ \ \ \  \.ssh\/authorized\_keys\ \.ssh\/authorized\_keys2"

sudo sed -i "/$line20/a$line2\n$line21\n$line22\n$line23\n$line24" $f1
sudo systemctl restart sshd
