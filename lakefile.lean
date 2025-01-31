import Lake
open Lake DSL

package Megaparsec

@[default_target]
lean_lib Megaparsec

require LSpec from git
  "https://github.com/lurk-lab/LSpec" @ "7f2c46b"

require YatimaStdLib from git
  "https://github.com/imbrem/YatimaStdLib.lean" @ "main"

require Straume from git
  "https://github.com/imbrem/straume" @ "main"

@[default_target]
lean_exe megaparsec where
  root := `Main

lean_exe Tests.Parsec
lean_exe Tests.IO
lean_exe Tests.StateT
lean_exe Tests.Lisp
