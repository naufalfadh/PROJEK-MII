package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.Checksheet1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/Checksheet1")
public class Checksheet1Rest {
    @Autowired
    private Checksheet1Service checksheet1Service;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataChecksheet1")
    public ResponseEntity<String> getDataChecksheet1(@RequestBody Map<String, Object> data) {
        System.out.println("Masuk" + data);
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.getDataChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataChecksheet1ById")
    public ResponseEntity<String> getDataChecksheet1ById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.getDataChecksheet1ById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }
    @PostMapping("/GetIdChecksheet1ByData")
    public ResponseEntity<String> getIdChecksheet1ByData(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.getIdChecksheet1ByData(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateChecksheet1")
    public ResponseEntity<String> createChecksheet1(@RequestBody Map<String, Object> data) {
        System.out.println("MASUK YESS"+data);
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.createChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }


    @PostMapping("/DetailChecksheet1")
    public ResponseEntity<String> detailChecksheet1(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.detailChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditChecksheet1")
    public ResponseEntity<String> editChecksheet1(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.editChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusChecksheet1")
    public ResponseEntity<String> setStatusChecksheet1(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.setStatusChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListChecksheet1")
    public ResponseEntity<String> getListChecksheet1(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheet1Service.getListChecksheet1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
}
