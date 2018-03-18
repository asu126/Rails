# 使用说明
- 1. 依赖安装
  - ruby
  - sqlite3 -- sudo apt install sqlite3 libsqlite3-dev
  
  - rails 框架 -- sudo gem install rails -v 4.2.2

- 2. clone 本工程到本地
```
git clone https://github.com/asu126/Rails.git
cd Rails
```

- 3. gem 包安裝
```
cd Rails && bundle install --path vendor/bundle
```

- 4. 运行
```
rails db:migrate RAILS_ENV=development
rails server
```

- 5. 浏览器打开如下页面
```
http://localhost:3000
```

# 参考文档
- [Ruby on Rails 指南](https://ruby-china.github.io/rails-guides/v4.1/index.html)
- [Ruby on Rails 教程](https://railstutorial-china.org/rails42/)
