import Swift

//컬렉션 타입
//Array, Dictionary, Set

//Array - 순서가 있는 리스트 컬렉션
//Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
//Set - 순서가 없고, 멤버가 유일한 컬렉션

//MARK: -Array

var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(100.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

integers[0]

var doubles: Array<Double> = [Double]()
var strings: [String] = [String]()
var characters: [Character] = []

//let을 사용하면 불변 Array
let immutable = [1, 2, 3]

//MARK: -Dictionary

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary["someKey"] = "dictionary" // 값 수정
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil

let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "yagom", "gender": "male"]
//emptyDictionary["key"] = "value"
//let someValue: String = initializedDictionary["name"]

//MARK: -Set
//세트는 축약 문법이 없다
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)

let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)

let subtracting: Set<Int> = setA.subtracting(setB)
