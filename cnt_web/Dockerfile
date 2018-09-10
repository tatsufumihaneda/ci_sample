FROM amazonlinux

#### 基本設定 ####
# タイムゾーン設定
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

#### MW導入 ####
# AWS CLI導入
RUN yum install -y awscli
RUN aws --version
ENV AWS_DEFAULT_REGION=ap-northeast-1

# apache 導入
RUN yum install -y httpd
COPY ./index.html /var/www/html/index.html
EXPOSE 80

##### ログ #####
# httpd.conf のログを stdout, stderr に繋ぐ
RUN ln -sf /dev/stdout /var/log/httpd/access_log && \
    ln -sf /dev/stderr /var/log/httpd/error_log

# mime タイプのファイル追加
#RUN ln -sf /etc/mime.types /etc/httpd/conf/mime.types

##### 起動時コマンド #####
# httpd をフォアグラウンドで動かす（コンテナ内で処理が終わらない）
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
