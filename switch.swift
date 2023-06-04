// Simulating switch/case expression.
let name = "John Smith"
for name in ["Fred", "John", "Bill", "Wilma", "John Smith"] {
    let msg = {switch name {
    case "Fred":
        return "Hi Fred! I like the Flintstones!"
    case "John", "Bill":
        return "Hi John or Bill"
    case let n where n.hasSuffix("Smith"):
        return "One of the Smiths! Hi \(n)!"
    default:
        return "Pleased to meet you, \(name)."
    }}()
    print(msg)
}
