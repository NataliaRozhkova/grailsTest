package testapp

class Hotel {
    String name
    Country country
    int stars
    String webPage

    static constraints = {
        name maxSize: 255, blank: false, nullable: false
        name (unique: ['name', 'country'])
        stars blankname: false, nullable: false, validator: {
            if (it > 5 || it < 1) return ['ERROR value']
        }
        webPage url: true, nullable: true, matches: "^(http|https)://(.*)"
    }

    Hotel(String name, Country country, int stars, String webPage) {
        this.name = name
        this.country = country
        this.stars = stars
        this.webPage = webPage
    }
}
