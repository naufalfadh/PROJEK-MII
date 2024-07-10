package id.co.sisteminformasiproduksibackend.service;

import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

public interface UtilitiesService {
    String login(Map<String, Object> data);
    String getListMenu(Map<String, Object> data);
    String getListKaryawan(Map<String, Object> data);
    public ResponseEntity<?> uploadFile(MultipartFile file);
    public ResponseEntity<Resource> downloadFile(String fileName);
}
