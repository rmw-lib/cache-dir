import {dirname,join} from 'path'
import {mkdirSync, readFileSync, existsSync} from 'fs'
import {homedir} from 'os'

export package_json = (skip=0)->
  {stack} = new Error()
  stack = stack.split("\n",4+skip).pop()
  pos = stack.indexOf("://")
  dirpath = dirname stack[pos+3..].split(":",1)[0]
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

      mkdirSync dirpath,recursive:true
      dirpath

  )

export default Env()
