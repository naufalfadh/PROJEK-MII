package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.MasterAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/MasterArea")
public class MasterAreaRest {
    @Autowired
    private MasterAreaService masterAreaService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataArea")
    public ResponseEntity<String> getDataArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.getDataArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataAreaById")
    public ResponseEntity<String> getDataAreaById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.getDataAreaById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateArea")
    public ResponseEntity<String> createArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.createArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailArea")
    public ResponseEntity<String> detailArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.detailArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditArea")
    public ResponseEntity<String> editArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.editArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusArea")
    public ResponseEntity<String> setStatusArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.setStatusArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListArea")
    public ResponseEntity<String> getListArea(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterAreaService.getListArea(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
}