package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.CatatanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/Catatan")
public class CatatanRest {
    @Autowired
    private CatatanService masterCatatanService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataCatatan")
    public ResponseEntity<String> getDataCatatan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.getDataCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataCatatanById")
    public ResponseEntity<String> getDataCatatanById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.getDataCatatanById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateCatatan")
    public ResponseEntity<String> createCatatan(@RequestBody Map<String, Object> data) {

        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.createCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailCatatan")
    public ResponseEntity<String> detailCatatan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.detailCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditCatatan")
    public ResponseEntity<String> editCatatan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.editCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusCatatan")
    public ResponseEntity<String> setStatusCatatan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.setStatusCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListCatatan")
    public ResponseEntity<String> getListCatatan(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterCatatanService.getListCatatan(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }

}
