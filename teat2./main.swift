//
//  main.swift
//  test2
//
//  Created by Бектур Каримов on 3/1/23.
//

import Foundation

//
//Критерии:
//Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)
//
//
//Максимальное количество баллов за задание - 40
//По истечению 1 часа прием заданий производиться не будет


class Hero{
   private var name: String
    private var power: Int
    private var hero1: [Fanny] = [Fanny] ()
    private var hero2: [Gussion] = [Gussion] ()
    init(name: String, power: Int) {
        self.name = name
        self.power = power
    }
    func addFanny(add: Fanny){
        hero1.append(add)
    }
    func addGusssion(add: Gussion){
        hero2.append(add)
    }
    func deleteHero1(deletehero1: Fanny){
        for (index, item) in hero1.enumerated(){
                hero1.remove(at: index)
            
        }
        
    }
    func deleteHero2(deletehero2: Gussion){
        for (index, item) in hero2.enumerated(){
                hero2.remove(at: index)
            
        }
}

class ConterHero{
    private var name: String
    private var power: Int
    private var hero1: [Saber] = [Saber] ()
    private var hero2: [Franco] = [Franco] ()
    init(name: String, power: Int) {
        self.name = name
        self.power = power
    }
    func addSaber(add: Saber){
        hero1.append(add)
    }
    func addFranco(add: Franco){
        hero2.append(add)
    }
    func deleteHero1(deleteHero11: Saber){
        for (index, item) in hero1.enumerated(){
                hero1.remove(at: index)
            
        }
        
    }
    func deleteHero2(deleteHero2: Franco){
        for (index, item) in hero2.enumerated(){
                hero2.remove(at: index)
            
        }
}
}


class Fanny: Hero{
    var skil1: String
    var skil2: String
    var skil3: String
    init(skil1: String, skil2: String, skil3: String) {
        self.skil1 = skil1
        self.skil2 = skil2
        self.skil3 = skil3
        super.init(name: "Fanny", power: 3000)
    }
    func ShowFanny(){
        print(" \(skil1), \(skil2), \(skil3)")
    }
}


class Gussion : Hero{
    var skil1: String
    var skil2: String
    var skil3: String
    init(skil1: String, skil2: String, skil3: String) {
        self.skil1 = skil1
        self.skil2 = skil2
        self.skil3 = skil3
        super.init(name: "Gussion", power: 3000)
    }
}


class Franco : ConterHero{
    var skil1: String
    var skil2: String
    var skil3: String
    init(skil1: String, skil2: String, skil3: String) {
        self.skil1 = skil1
        self.skil2 = skil2
        self.skil3 = skil3
        super.init(name: "Franco", power: 4000)
    }
}



class Saber: ConterHero{
    var skil1: String
    var skil2: String
    var skil3: String
    init(skil1: String, skil2: String, skil3: String) {
        self.skil1 = skil1
        self.skil2 = skil2
        self.skil3 = skil3
        super.init(name: "Saber", power: 5000)
    }
}
