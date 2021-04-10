package testapp

import groovy.transform.CompileStatic

@CompileStatic
class BootStrap {

    CountryService countryService
    HotelService hotelService
    def init = { servletContext ->
        Country russia = countryService.save(new Country('Russia', 'Moscow'))
        Country usa = countryService.save(new Country('USA', 'Washington'))
        Country turkey = countryService.save(new Country('Turkey', 'Istanbul'))

        hotelService.save(new Hotel('Adalya Resort & Spa', turkey, 5, 'https://tophotels.ru/hotel/al39967'))
        hotelService.save(new Hotel('CLUB SUN HEAVEN FAMILY & SPA', turkey, 5, 'https://tophotels.ru/hotel/al4347'))
        hotelService.save(new Hotel('JUSTINIANO CLUB ALANYA', turkey, 4, null))
        hotelService.save(new Hotel('ASDEM PARK', turkey, 4, 'https://tophotels.ru/hotel/al4830'))
        hotelService.save(new Hotel('CLUB SEA TIME', turkey, 3, null))
        hotelService.save(new Hotel('YESILOZ', turkey, 3, null))
        hotelService.save(new Hotel('FLAMINGO', usa, 3, 'https://tophotels.ru/hotel/al32657'))
        hotelService.save(new Hotel('MGM GRAND HOTEL & CASINO', usa, 4, 'https://tophotels.ru/hotel/al15753'))
        hotelService.save(new Hotel('PARIS LAS VEGAS ', usa, 4, 'https://tophotels.ru/hotel/al15756'))
        hotelService.save(new Hotel('HUDSON', usa, 4, 'https://tophotels.ru/hotel/al15728'))
        hotelService.save(new Hotel('СОЧИ ПАРК ОТЕЛЬ', russia, 3, 'https://tophotels.ru/hotel/al141651'))
        hotelService.save(new Hotel('BRIDGE RESORT (БРИДЖ РЕЗОРТ)', russia, 4, 'https://tophotels.ru/hotel/al138789'))
        hotelService.save(new Hotel('Alean Family Resort & Spa Doville', russia, 5, 'https://tophotels.ru/hotel/al102232'))
        hotelService.save(new Hotel('ALEAN FAMILY RESORT & SPA RIVIERA ', russia, 4, 'https://tophotels.ru/hotel/al33593'))
        hotelService.save(new Hotel('БАРХАТНЫЕ СЕЗОНЫ', russia, 3, 'https://tophotels.ru/hotel/al156633'))

    }
    def destroy = {
    }
}
