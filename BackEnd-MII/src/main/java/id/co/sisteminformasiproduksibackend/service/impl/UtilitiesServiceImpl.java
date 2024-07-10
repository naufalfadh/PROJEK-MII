package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.MasterProsesService;
import id.co.sisteminformasiproduksibackend.service.UtilitiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class UtilitiesServiceImpl implements UtilitiesService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    private final String fileBasePath = "src/main/resources/Uploads/";
    @Override
    public String login(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("sso_getAuthenticationProduksi", dataList.toArray(new String[0]));
        if (result == null || result.isEmpty() || result.equals("[]")) {
            return "{\"Status\":\"LOGIN FAILED\"}";
        }
        return result;
    }

    @Override
    public String getListMenu(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("all_getListMenu", dataList.toArray(new String[0]));
        return result;
    }


    public String getListKaryawan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListKaryawan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public ResponseEntity<?> uploadFile(MultipartFile file) {
        try {
            String originalFilename = file.getOriginalFilename();
            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
            String newFileName = "FILE_" + System.currentTimeMillis() + fileExtension;

            Path filePath = Paths.get(fileBasePath + newFileName);
            Files.copy(file.getInputStream(), filePath);

            Map<String, String> response = new HashMap<>();
            response.put("newFileName", newFileName);
            response.put("message", "File uploaded successfully");

            return ResponseEntity.ok(response);

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("Gagal Upload");
        }
    }

    @Override
    public ResponseEntity<Resource> downloadFile(String fileName) {
        try {
            Path filePath = Paths.get(fileBasePath, fileName);
            File file = filePath.toFile();

            System.out.println("File path: " + filePath.toString()); // Logging untuk debug
            System.out.println("File exists: " + file.exists()); // Logging untuk debug

            if (!file.exists()) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

            InputStreamResource resource = new InputStreamResource(new FileInputStream(file));

            HttpHeaders headers = new HttpHeaders();
            headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + file.getName());
            headers.add(HttpHeaders.CONTENT_TYPE, getContentType(file.getName()));

            return ResponseEntity.ok()
                    .headers(headers)
                    .contentLength(file.length())
                    .body(resource);
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    private String getContentType(String fileName) {
        String contentType;
        if (fileName.endsWith(".jpg")) {
            contentType = "image/jpg";
        } else if (fileName.endsWith(".png")) {
            contentType = "image/png";
        } else if (fileName.endsWith(".pdf")) {
            contentType = "application/pdf";
        } else if (fileName.endsWith(".jpeg")) {
            contentType = "image/jpeg";
        } else {
            contentType = "application/octet-stream";
        }
        return contentType;
    }
}
