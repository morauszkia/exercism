module LogLevels

let message (logLine: string): string = 
    let startIndex = logLine.IndexOf ":" + 2
    logLine.[startIndex..].Trim()

let logLevel(logLine: string): string = 
    let endIndex = logLine.IndexOf ":" - 2
    logLine.[1..endIndex].ToLower()

let reformat(logLine: string): string = 
    let msg = message logLine
    let level = logLevel logLine
    sprintf "%s (%s)" msg level
