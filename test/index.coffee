#!/usr/bin/env coffee

import ENV from '@rmw/env'
import test from 'tape'

test 'env', (t)=>
  console.log ENV.CONFIG
  console.log ENV.CACHE
  t.end()
