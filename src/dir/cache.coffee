#!/usr/bin/env coffee

import {homedir} from 'os'
import {join} from 'path'
import {mkdirSync} from 'fs'

export default dir = process.env.RMW_CACHE or join(homedir(),".cache/rmw")
mkdirSync(dir,recursive:true)
