package pl.coderslab.announcement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class AnnouncementConverter implements Converter<String, Announcement> {
    @Autowired
    private AnnouncementRepository announcementRepository;

    @Override
    public Announcement convert(String source) {
        try {
            Announcement announcement = announcementRepository.findOne(Long.parseLong(source));
            return announcement;
        } catch (Exception e) {
            return null;
        }
    }
}