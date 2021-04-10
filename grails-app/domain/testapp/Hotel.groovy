package testapp

class Hotel {
    String name
    Country country
    int stars
    String webPage

    static  constraints = {
        name maxSize: 255, blank: false, unique: true, nullable: false
        stars size: 1..5, blank: false, nullable: false
        webPage url:true, nullable:true
    }

    Hotel(String name, Country country, int stars, String webPage) {
        this.name = name
        this.country = country
        this.stars = stars
        this.webPage = webPage
    }
}
