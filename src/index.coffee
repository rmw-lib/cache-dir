import {dirname,join} from 'path'
import {readFileSync, existsSync} from 'fs'
import {homedir} from 'os'

export stack = =>
  {prepareStackTrace} = Error
  Error.prepareStackTrace = (error, stack) => stack
  err = new Error()
  r = err.stack.slice(4)
  Error.prepareStackTrace = prepareStackTrace
  r

export package_json = (skip=0)->
  caller = stack()[skip].getFileName()
  pos = caller.indexOf("://")
  dirpath = dirname caller[pos+3..].split(":",1)[0]
  while 1
    jp = join dirpath, "package.json"
    if existsSync jp
      return JSON.parse readFileSync jp
    if dirpath == "/"
      return {}
    dirpath = dirname dirpath

export project_name = (name)=>
  pos = name.indexOf '/'
  [name[1...pos],name[pos+1..]]

export Env = (skip=0)=>
  new Proxy(
    {}
    get:(self, attr)->
      {name} = package_json(skip)
      [project, name] = project_name name

      dirpath = process.env[project.toUpperCase()+"_"+name.toUpperCase()+"_"+attr]

      if not dirpath
        dirpath = join homedir(),"."+attr.toLowerCase(),project,name

      dirpath

  )

export default Env()
