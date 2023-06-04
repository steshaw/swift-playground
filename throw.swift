enum AnError : Error {
    case Bad
}

func foo(_ b : Bool) throws {
    if (b) {
        throw AnError.Bad
    }
    print("Good")
}

do {
    try foo(false)
    try foo(true)
} catch {
    print("Failed with error: \(error)")
}
