package pl.coderslab.ride;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class RideConverter implements Converter<String, Ride> {
    @Autowired
    private RideRepository rideRepository;

    @Override
    public Ride convert(String source) {
        try {
            Ride ride = rideRepository.findOne(Long.parseLong(source));
            return ride;
        } catch (Exception e) {
            return null;
        }
    }
}