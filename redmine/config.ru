# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# もともとの設定。トップレベルでの起動になる。
#run RedmineApp::Application

# 環境変数であたえられたディレクトリごとに起動するようにする。
if ENV['RAILS_RELATIVE_URL_ROOT']
 map ENV['RAILS_RELATIVE_URL_ROOT'] do
    run RedmineApp::Application
 end
else
 run RedmineApp::Application
end

# (c) https://nazuna.sakura.ne.jp/wiki/index.php?title=Redmine

