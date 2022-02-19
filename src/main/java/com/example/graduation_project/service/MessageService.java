package com.example.graduation_project.service;
import com.example.graduation_project.entity.Message;
import com.example.graduation_project.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Service
public class MessageService {

    private final MessageRepository messageRepository;

    @Value("${upload.path}")
    private String uploadPath;

    MessageService(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    public Iterable<Message> findAllMessages() {
        return messageRepository.findAll();
    }

    public Iterable<Message> findMessageByTag(String filter) {
        return messageRepository.findByTag(filter);
    }

    public void saveMessage(Message message) {
       messageRepository.save(message);
    }

    public void saveFile(Message message, MultipartFile file) throws IOException {
        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + "/" + resultFilename));
            message.setFilename(resultFilename);
        }
    }
}