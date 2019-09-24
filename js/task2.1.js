var Animal = function() {
    this.name = "";
    this.age = 0;
    this.weight = 0;
    this.countFood = 0;
    this.distance = 0;
};

Animal.prototype.go = function() {
    this.distance += this.age * 2;

    return `${this.name} walk ${this.distance}km\n`;
};

Animal.prototype.eat = function() {
    this.countFood += this.countFood;

    return `${this.name} eat ${this.countFood}kg\n`;
};

Animal.prototype.sleep = function() {
    if ((this.countFood >= (this.weight * 0.1)) && (this.distance >= 40)) {
        return `${this.name} sleep\n`;
    }

    return `${this.name} can't sleep. Hungry or not tired.\n`;
};

var Lion = function(name, age) {
    this.name = name;
    this.age = age;
    this.weight = (this.age * 40) < 200 ? (this.age * 40) : 200;
    this.countFood = (this.age * 2) < 20 ? (this.age * 2) : 20;
};
Lion.prototype = new Animal();

var lion = new Lion('Lion King', 5);
console.log(lion.go());
console.log(lion.eat());
console.log(lion.go());
console.log(lion.go());
console.log(lion.go());
console.log(lion.sleep());