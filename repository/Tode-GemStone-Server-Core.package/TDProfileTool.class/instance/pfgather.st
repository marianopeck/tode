tode commands
pfgather
  "pf gather"

  | profMon |
  self pfstop.
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ]