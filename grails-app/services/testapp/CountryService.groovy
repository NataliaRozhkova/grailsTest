package testapp

import grails.gorm.services.Service


@Service(Country)
interface CountryService {

    Country save(Country country)

    void delete(Long id)


}
