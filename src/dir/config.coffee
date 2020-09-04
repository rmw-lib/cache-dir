#!/usr/bin/env coffee

import {homedir} from 'os'
import {join} from 'path'
import {mkdirSync} from 'fs'

export default dir = process.env.RMW_CONFIG or join(homedir(),".config/rmw")
mkdirSync(dir, { recursive: true })
