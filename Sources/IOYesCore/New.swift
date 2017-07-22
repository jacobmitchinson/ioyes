import Foundation
import Console

public final class New: Command {
    
    public let id = "new"
    
    public let signature: [Argument]
    public let console: ConsoleProtocol
    
    public let help: [String] = [
        "Creates a new application from a template.",
        "Use --template=repo/template for github templates",
    ]
    
    public init(console: ConsoleProtocol) {
        self.console = console
        
        signature = [
            Value(name: "name", help: [
                "The application's executable name."
                ])
        ]
    }
    
    public func run(arguments: [String]) throws {
        do {
            _ = try console.execute(
                verbose: isVerbose,
                program: "pod",
                arguments: ["install"]
            )
        } catch ConsoleError.backgroundExecute(_, let error, let output) {
            console.warning(output)
            console.warning(error)
            console.error("Could not pod install")
        }
    }
    
}
