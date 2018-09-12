package pl.coderslab.busstop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class BusstopConverter implements Converter<String, Busstop> {
    @Autowired
    private BusstopRepository busstopRepository;

    @Override
    public Busstop convert(String source) {
        try {
            Busstop busstop = busstopRepository.findOne(Long.parseLong(source));
            return busstop;
        } catch (Exception e) {
            return null;
        }
    }
}