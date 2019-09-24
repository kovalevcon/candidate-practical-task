class Animal {
    constructor() {
        this.name = "";
        this.age = 0;
        this.weight = 0;
        this.countFood = 0;
        this.distance = 0;
    };

    go() {
        this.distance += this.age * 2;

        return `${this.name} walk ${this.distance}km\n`;
    }

    eat() {
        this.countFood += this.countFood;

        return `${this.name} eat ${this.countFood}kg\n`;
    }

    sleep() {
        if ((this.countFood >= (this.weight * 0.1)) && (this.distance >= 40)) {
            return `${this.name} sleep\n`;
        }

        return `${this.name} can't sleep. Hungry or not tired.\n`;
    }
}

class Lion extends Animal {
    constructor(name, age) {
        super();
        this.name = name;
        this.age = age;
        this.weight = (this.age * 40) < 200 ? (this.age * 40) : 200;
        this.countFood = (this.age * 2) < 20 ? (this.age * 2) : 20;
    }
}

const lion = new Lion('Lion King', 5);
console.log(lion.go());
console.log(lion.eat());
console.log(lion.go());
console.log(lion.go());
console.log(lion.go());
console.log(lion.sleep());