package pl.coderslab.line;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class LineConverter implements Converter<String, Line> {
    @Autowired
    private LineRepository lineRepository;

    @Override
    public Line convert(String source) {
        try {
            Line line = lineRepository.findOne(Long.parseLong(source));
            return line;
        } catch (Exception e) {
            return null;
        }
    }
}