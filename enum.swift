enum Result<A> {
    case Ok(A)
    case Fail(String)

    func map<B>(f: (A) -> B) -> Result<B> {
        switch self {
        case let .Ok(a): return .Ok(f(a))
        case let .Fail(msg): return .Fail(msg)
        }
    }
}

func foo(_ err : Bool) -> Result<Int> {
    err ? Result.Ok(1) : Result.Fail("An error")
}

print(foo(true))
print(foo(false))

for r1 in [Result.Ok(1), Result.Fail("ouch!")] {
    print("r1 = \(r1)")
    let r2 = r1.map{$0 + 1}
    print("r2 = \(r2)")
}
