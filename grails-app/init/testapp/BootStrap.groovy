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
        Country gondor = countryService.save(new Country('Gondor', 'Minas Tirith'))


        hotelService.save('Adalya Resort & Spa', turkey, 5, 'https://tophotels.ru/hotel/al39967')
        hotelService.save('CLUB SUN HEAVEN FAMILY & SPA', turkey, 5, 'https://tophotels.ru/hotel/al4347')
        hotelService.save('JUSTINIANO CLUB ALANYA', turkey, 4, null)
        hotelService.save('ASDEM PARK', turkey, 4, 'https://tophotels.ru/hotel/al4830')
        hotelService.save('CLUB SEA TIME', turkey, 3, null)
        hotelService.save('YESILOZ', turkey, 3, null)
        hotelService.save('FLAMINGO', usa, 3, 'https://tophotels.ru/hotel/al32657')
        hotelService.save('MGM GRAND HOTEL & CASINO', usa, 4, 'https://tophotels.ru/hotel/al15753')
        hotelService.save('PARIS LAS VEGAS ', usa, 4, 'https://tophotels.ru/hotel/al15756')
        hotelService.save('HUDSON', usa, 4, 'https://tophotels.ru/hotel/al15728')
        hotelService.save('СОЧИ ПАРК ОТЕЛЬ', russia, 3, 'https://tophotels.ru/hotel/al141651')
        hotelService.save('BRIDGE RESORT (БРИДЖ РЕЗОРТ)', russia, 4, 'https://tophotels.ru/hotel/al138789')
        hotelService.save('Alean Family Resort & Spa Doville', russia, 5, 'https://tophotels.ru/hotel/al102232')
        hotelService.save('ALEAN FAMILY RESORT & SPA RIVIERA ', russia, 4, 'https://tophotels.ru/hotel/al33593')
        hotelService.save('БАРХАТНЫЕ СЕЗОНЫ', russia, 3, 'https://tophotels.ru/hotel/al156633')
        hotelService.save('Hobbiton Resort&Spa', gondor, 5, 'https://tonkosti.ru/%D0%A5%D0%BE%D0%B1%D0%B1%D0%B8%D1%82%D0%BE%D0%BD')

    }
    def destroy = {
    }
}
