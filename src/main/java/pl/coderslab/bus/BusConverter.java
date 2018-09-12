package pl.coderslab.bus;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class BusConverter implements Converter<String, Bus> {
    @Autowired
    private BusRepository busRepository;

    @Override
    public Bus convert(String source) {
        try {
            Bus bus = busRepository.findOne(Long.parseLong(source));
            return bus;
        } catch (Exception e) {
            return null;
        }
    }
}