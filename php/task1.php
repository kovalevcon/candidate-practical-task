<?php

/**
 * Class Animal
 */
class Animal
{
    /** @var string $name */
    protected $name;
    /** @var int $age */
    protected $age;
    /** @var float $weight */
    protected $weight;
    /** @var float $countFood*/
    protected $countFood;
    /** @var float $distance*/
    protected $distance;

    /**
     * Animal walk
     *
     * @return string
     */
    public function go(): string
    {
        $this->distance += $this->age * 2;

        return "{$this->name} walk {$this->distance}km\n";
    }

    /**
     * Animal eat
     *
     * @return string
     */
    public function eat(): string
    {
        $this->countFood += $this->countFood;

        return "{$this->name} eat {$this->countFood}kg\n";
    }

    /**
     * Animal sleep
     *
     * @return string
     */
    public function sleep(): string
    {
        if (($this->countFood >= ($this->weight * 0.1)) && ($this->distance >= 40)) {
            return "{$this->name} sleep\n";
        }

        return "{$this->name} can`t sleep. Hungry or not tired.\n";
    }
}

/**
 * Class Lion
 */
class Lion extends Animal
{
    /**
     * Lion constructor.
     *
     * @param string $name
     * @param int    $age
     */
    public function __construct(string $name, int $age)
    {
        $this->name = $name;
        $this->age = $age;
        $this->weight = ($this->age * 40) < 200 ? ($this->age * 40) : 200;
        $this->countFood = ($this->age * 2) < 20 ? ($this->age * 2) : 20;
    }
}

$lion = new Lion('Lion King', 5);
echo $lion->go();
echo $lion->eat();
echo $lion->go();
echo $lion->go();
echo $lion->go();
echo $lion->sleep();
