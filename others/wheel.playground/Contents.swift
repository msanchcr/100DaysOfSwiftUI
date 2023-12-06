class Wheel {
    
    let pi =  3.14
    let cmPerInch = 2.54
    
    let _heigth: Int
    let _radius: Int
    let _weight: Int
    
    //CONSTRUCTORS
    init(radius: Int, weight: Int, height: Int) {
        _radius = radius
        _weight = weight
        _heigth = height
    }
    
    //GETTERS & SETTERS
    func getHeight() -> Int {
        return _heigth
    }
    
    func getRadius() -> Int {
        return _radius
    }
    
    func getWeight() -> Int {
        return _weight
    }
    
    //OTHER FUNCS
    func getLength() -> Double {
        // 2 * pi * r
        // r = radius + (weight * height / 100)
        return 2 * pi * (Double(getRadius()) * cmPerInch + Double(getWeight() * getHeight() / 100))
    }
    
    func toString() -> String {
        return "wheel: {radius: " + String(getRadius()) + ", weight: " + String(getWeight()) + ", height: " + String(getHeight()) + "}"
    }
}

let wheel = Wheel(radius: 21, weight: 90, height: 90)
wheel.getHeight()
wheel.getRadius()
wheel.getWeight()
wheel.getLength()
wheel.toString()
