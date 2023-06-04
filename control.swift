do {
    print("names-0:")
    let names = ["Fred", "Wilma", "Barney", "Betty"]
    for n in names {
        if n != "Wilma" {
            print("  \(n)")
        }
    }
    print("names-1:")
    let names1 : [()] = names.map({ if $0 != "Wilma" { print("  \($0)") } })
    print(names1)
    print("names-2:")
    names.forEach({ if $0 != "Wilma" { print("  \($0)") } })
}

do {
    print("optional:")
    for optName : String? in ["John", nil] {
      //let optName: String? = "John"
      let indent = "  "
      print(indent, "optName = \(String(describing: optName))")
      print(indent, "opt is nil = ", optName == nil)
      print(indent, "opt type = ", type(of: optName))
      print(indent, "map")
      let r : ()? = optName.map{print(indent, $0)}
      print(indent, "r =", r as Any)
      //optName.forEach{print(indent, $0)}
    }
}

do {
    print("names:")
    let names = ["John", nil, "Jack", "Jill", nil, "Bill"]
    print("  ", type(of: names))
    print("  loop:")
    for optName in names {
        if let name = optName {
            print("    Hello, \(name)")
        } else {
            print("    Hello, \(String(describing: optName))")
        }
        print("    Hi \(optName ?? "None")")
    }
    print("  map:")
    names.map { optName in
        if let name = optName {
            return "    Hello, \(name)"
        } else {
            return "    Hello, \(String(describing: optName))"
        }
    }.forEach{print($0)}
    names.map { optName in return "    Hi \(optName ?? "None")"}.forEach{print($0)}
}
