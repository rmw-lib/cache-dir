#!/usr/bin/env coffee

import CACHE_DIR from '../src/index'
import test from 'tape'

test 'cache-dir', (t)=>
  console.log CACHE_DIR
  t.end()
