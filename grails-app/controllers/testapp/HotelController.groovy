package testapp

class HotelController {

    static scaffold = Hotel

    HotelService hotelService

    def index() {
        [hotelList: Hotel.list()]
    }

    def search() {
        [countryList: Country.list()]
    }

    def hotelList() {


            List<Hotel> list = (params.long('country.id') == null) ? hotelService.findByName(params['name'])
                    : hotelService.findByName(params['name']).stream().filter { c -> c.country.id == params.long('country.id') }.toArray()


        [hotelList: list]
    }
}
