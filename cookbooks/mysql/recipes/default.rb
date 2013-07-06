#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# yumでmysqlインストール
package "mysql-server" do
    action :install
end

# ソースからmysqlをコンパイルしてインストールしたいときは下記で
#script "install_mysql" do
#    interpreter "bash"
#    user "root"
#    cwd "/tmp"
#    code <<-EOH
#        export CFLAGS='-m64 -O3 -fPIC -fno-common -fno-exceptions -static-libgcc'
#        export CXXFLAGS="$CFLAGS"
#        wget http://downloads.mysql.com/archives/mysql-5.1/mysql-5.1.65.tar.gz
#        tar xzvf mysql-5.1.65.tar.gz
#        cd mysql-5.1.65
#       ./configure 
#        make
#        make install
#   EOH
#    # ここに同じスクリプトを実行しないような設定を追加(chef-solo入門を参照 たしかcreateなんとか。。)
#end

# ユーザ、グループを追加
#script "add_user" do
#    interpreter "bash"
#    user "root"
#    cwd "/usr/local/src"
#    code <<-EOH
#        useradd -d /var/empty/ -s /sbin/nologin mysql
#        usermod -G mysql mysql
#    EOH
#end

# my.cnf設定をかえたいときはtemplateで
#template "/etc/my.cnf" do
#    source "my.cnf.erb"
#end

# ディレクトリを作成したいときは下記みたいに
#directory "/var/lib/mysql" do
#  owner "mysql"
#  group "mysql"
#  recursive true
#  mode 0755
#  action :create
#end

