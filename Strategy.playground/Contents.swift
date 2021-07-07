// Создаем протокол с определением уровня опыта

protocol SwimBehavior {
    
    func swim()
}

// Создаем класс подписаный на протокол с определением опыта(умеет не умеет плавать)

class ProfessionalSwimmer: SwimBehavior {
    
    func swim() {
        print("professional swimming")
    }
}

class NonSwimmer: SwimBehavior {
    
    func swim() {
        print("non-swimming")
    }
}

// Создаем протокол с определением уровня опыта

protocol DiveBehavior {
    
    func dive()
}

// Создаем класс подписаный на протокол с определением опыта(умеет не умеет нырять)

class ProfessionalDiver: DiveBehavior {
    
    func dive() {
        print("professional diving")
    }
}


class NewbieDiver: DiveBehavior {
    
    func dive() {
        print("newbie diving")
    }
}

class NonDiver: DiveBehavior {
    
    func dive() {
        print("non-diving")
    }
}

// Создаем класс с приватными переменными подписаные на протокол, функции опыта(perfotm) и определения оптыа (set)
class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwim() {
        
        swimBehavior.swim()
    }
    
    func performDive() {
        
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior) {
        
        self.diveBehavior = db
    }
    
// Инициализируем
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}

// Создаем переменную с определением опыта
let dmitry = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: ProfessionalDiver())

//Устанавливаем опыт
dmitry.setSwimBehavior(sb: NonSwimmer())


dmitry.performDive()
dmitry.performSwim()









