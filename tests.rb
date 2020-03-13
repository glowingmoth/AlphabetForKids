require 'test/unit'

# Nested hash holding both alphabet categories
$words_hash = {
    'A' => {animal: 'Ant', object: 'Apple'},
    'B' => {animal: 'Bird', object: 'Bus'},
    'C' => {animal: 'Cat', object: 'Castle'},
    'D' => {animal: 'Dog', object: 'Drums'},
    'E' => {animal: 'Elephant', object: 'Earmuffs'},
    'F' => {animal: 'Fish', object: 'Flowers'},
    'G' => {animal: 'Goat', object: 'Guitar'},
    'H' => {animal: 'Horse', object: 'Helicopter'},
    'I' => {animal: 'Impala', object: 'Igloo'},
    'J' => {animal: 'Jellyfish', object: 'Jeep'},
    'K' => {animal: 'Kangaroo', object: 'Key'},
    'L' => {animal: 'Lion', object: 'Ladder'},
    'M' => {animal: 'Mouse', object: 'Moon'},
    'N' => {animal: 'Numbat', object: 'Nest'},
    'O' => {animal: 'Octopus', object: 'Orange'},
    'P' => {animal: 'Pig', object: 'Planet'},
    'Q' => {animal: 'Quail', object: 'Queen'},
    'R' => {animal: 'Rabbit', object: 'Ring'},
    'S' => {animal: 'Snake', object: 'Scissors'},
    'T' => {animal: 'Turtle', object: 'Tree'},
    'U' => {animal: 'Urchin', object: 'Umbrella'},
    'V' => {animal: 'Vulture', object: 'Violin'},
    'W' => {animal: 'Whale', object: 'Watch'},
    'X' => {animal: 'Xerus', object: 'X-ray'},
    'Y' => {animal: 'Yak', object: 'Yoyo'},
    'Z' => {animal: 'Zebra', object: 'Zip'}
}

class AppTest < Test::Unit::TestCase
    def test_hash_value
        assert_equal($words_hash['N'][:animal],'Numbat')
    end
    
    def test_

    end


end

