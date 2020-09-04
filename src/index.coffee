#!/usr/bin/env coffee

import {homedir} from 'os'
import {join} from 'path'
import {mkdirSync} from 'fs'

export default CACHE_DIR = process.env.RMW_CACHE or join(homedir(),".cache/rmw")
mkdirSync(CACHE_DIR, { recursive: true })
