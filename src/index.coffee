#!/usr/bin/env coffee

import {homedir} from 'os'
import {join} from 'path'

CACHE_DIR = process.env.RMW_CACHE or join(homedir(),".cache/rmw")
