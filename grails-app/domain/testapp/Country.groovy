package testapp

class Country {
    String name
    String capital

    static constraints = {
        name maxSize: 255, blank: false, unique: true
        capital maxSize: 128, blank: false
    }

    String toString() {
        name
    }

    Country(String name, String capital) {
        this.name = name
        this.capital = capital
    }
}
