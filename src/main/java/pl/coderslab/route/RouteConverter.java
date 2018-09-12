package pl.coderslab.route;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class RouteConverter implements Converter<String, Route> {
    @Autowired
    private RouteRepository routeRepository;

    @Override
    public Route convert(String source) {
        try {
            Route route = routeRepository.findOne(Long.parseLong(source));
            return route;
        } catch (Exception e) {
            return null;
        }
    }
}