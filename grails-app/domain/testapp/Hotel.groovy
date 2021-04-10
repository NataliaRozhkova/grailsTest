package testapp

class Hotel {
    String name
    Country country
    int stars
    String webPage

    static  constraints = {
        name maxSize: 255, blank: false, unique: true, nullable: false
        stars blank: false, nullable: false
        webPage url:true, nullable:true
        stars validator: {
            if (it > 5 || it < 1) return ['ERROR value']
        }
    }

    Hotel(String name, Country country, int stars, String webPage) {
        this.name = name
        this.country = country
        this.stars = stars
        this.webPage = webPage
    }
}
