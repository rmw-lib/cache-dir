#!/usr/bin/env coffee

import DIR_CACHE from '../src/cache'
import DIR_CONFIG from '../src/config'
import test from 'tape'

test 'env', (t)=>
  console.log DIR_CACHE
  console.log DIR_CONFIG
  t.end()
