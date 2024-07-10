package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.ChecksheetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/Checksheet")
public class ChecksheetRest {
    @Autowired
    private ChecksheetService checksheetService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataChecksheet")
    public ResponseEntity<String> getDataChecksheet(@RequestBody Map<String, Object> data) {
        System.out.println("Masuk" + data);
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.getDataChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataChecksheetById")
    public ResponseEntity<String> getDataChecksheetById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.getDataChecksheetById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateChecksheet")
    public ResponseEntity<String> createChecksheet(@RequestBody Map<String, Object> data) {
        System.out.println("MASUK YESS");
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.createChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailChecksheet")
    public ResponseEntity<String> detailChecksheet(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.detailChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditChecksheet")
    public ResponseEntity<String> editChecksheet(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.editChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusChecksheet")
    public ResponseEntity<String> setStatusChecksheet(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.setStatusChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListChecksheet")
    public ResponseEntity<String> getListChecksheet(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = checksheetService.getListChecksheet(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
}
