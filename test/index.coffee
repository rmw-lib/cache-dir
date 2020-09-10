#!/usr/bin/env coffee

import ENV from '../src/index'
import test from 'tape'

test 'env', (t)=>
  console.log ENV.CONFIG
  console.log ENV.CACHE
  t.end()
