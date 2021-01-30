<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# @rmw/env

##  安装

```
yarn add @rmw/env
```

或者

```
npm install @rmw/env
```

## 使用

```
#!/usr/bin/env coffee

import ENV from '@rmw/env'
import test from 'tape'

test 'env', (t)=>
  console.log ENV.config
  console.log ENV.cache
  process.env.rmw = "/test"
  console.log ENV.config
  console.log ENV.cache
  t.end()

```

## 关于

本项目隶属于**人民网络([rmw.link](//rmw.link))** 代码计划。

![人民网络](https://raw.githubusercontent.com/rmw-link/logo/master/rmw.red.bg.svg)
