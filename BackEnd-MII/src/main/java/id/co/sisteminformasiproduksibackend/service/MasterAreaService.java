package id.co.sisteminformasiproduksibackend.service;

import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

public interface MasterAreaService {
    String getDataArea(Map<String, Object> data);
    String getDataAreaById(Map<String, Object> data);
    String createArea(Map<String, Object> data);
    String detailArea(Map<String, Object> data);
    String editArea(Map<String, Object> data);
    String setStatusArea(Map<String, Object> data);
    String getListArea(Map<String, Object> data);


}

