package testapp

import org.springframework.context.MessageSource

class CountryController {

    static scaffold = Country

    CountryService countryService
    HotelService hotelService
    MessageSource messageSource

    def index() {
        [countryList: Country.list()]
    }

    def delete() {
        hotelService.findAllByCountry(params.long('id')).each {it.delete()}
        countryService.delete(params.long('id'))
        redirect(controller: "country", action: "index")

    }




}
