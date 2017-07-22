import Foundation
import IOYesCore
import Console

var arguments = CommandLine.arguments

let terminal = Terminal(arguments: arguments)

var iterator = arguments.makeIterator()

guard let executable = iterator.next() else {
    throw ConsoleError.noExecutable
}

do {
    try terminal.run(executable: executable, commands: [
        New(console: terminal)
        ], arguments: Array(iterator), help: [
            "IOYes Docs"
    ])
} catch {
    print("Oops")
}

