package testapp

import grails.gorm.services.Query
import grails.gorm.services.Service

@Service(Hotel)
interface HotelService {

    Hotel save(Hotel hotel)

    Hotel save(String name, Country country, int stars, String webPage)

    void delete(Long id)

    @Query("SELECT ${h} FROM ${Hotel h} JOIN FETCH ${h.country} c WHERE c.id = $country")
    List<Hotel> findAllByCountry(Long country)

    @Query("SELECT ${h} FROM ${Hotel h}  WHERE lower(h.name) LIKE   concat('%', lower($name), '%') ORDER BY h.stars DESC , h.name")
    List<Hotel> findByName(String name)



}
