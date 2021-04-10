package testapp

import grails.gorm.services.Service

@Service(Hotel)
interface HotelService {
    Hotel save(Hotel hotel)


}
