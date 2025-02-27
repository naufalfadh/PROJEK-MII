package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.UtilitiesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/Utilities")
public class UtilitiesRest {
    @Autowired
    private UtilitiesService utilitiesService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/Login")
    public ResponseEntity<String> login(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = utilitiesService.login(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to login", e);
        }
    }

    @PostMapping("/GetListMenu")
    public ResponseEntity<String> getListMenu(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = utilitiesService.getListMenu(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list menu", e);
        }
    }



    @PostMapping("/GetListKaryawan")
    public ResponseEntity<String> getListKaryawan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = utilitiesService.getListKaryawan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list karyawan", e);
        }
    }
    @PostMapping("/Upload")
    public ResponseEntity<?> UploadFile (@RequestBody MultipartFile file){
        System.out.println(file);
        return utilitiesService.uploadFile(file);
    }

    @GetMapping("/Upload/DownloadFile")
    public ResponseEntity<Resource> downloadFile(@RequestParam String namaFile) {
        return utilitiesService.downloadFile(namaFile);
    }
}

