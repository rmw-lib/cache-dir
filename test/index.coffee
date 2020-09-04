#!/usr/bin/env coffee

import cache-dir from '../src/index'
import {cache-dir as Xxx} from '../src/index'
import test from 'tape'

test 'cache-dir', (t)=>
  t.equal cache-dir(1,2),3
  t.deepEqual Xxx([1],[2]),[3]
  t.end()
