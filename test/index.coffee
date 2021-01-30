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
