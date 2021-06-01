class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says \(speech)")
    }
    
    override func move() {
        print("Fly with wing span of \(wingSpan)m")
    }
    
    override func attack() {
        super.attack()
        print("Spit fire, 20 damage")
    }
}
