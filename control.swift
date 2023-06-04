do {
    let names = ["Fred", "Wilma", "Barney", "Betty"]
    for n in names {
        if n != "Wilma" {
            print(n)
        }
    }
}

do {
    let optName: String? = "John"
    print(optName == nil)
    print(type(of: optName))
}

do {
    let names = ["John", nil, "Jack", "Jill", nil, "Bill"]
    print(type(of: names))
    for optName in names {
        if let name = optName {
            print("Hello, \(name)")
        } else {
            print("Hello, \(String(describing: optName))")
        }
        print("Hi \(optName ?? "None")")
    }
}
