package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.MasterLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/MasterLine")
public class MasterLineRest {
    @Autowired
    private MasterLineService masterLineService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataLine")
    public ResponseEntity<String> getDataLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.getDataLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataLineById")
    public ResponseEntity<String> getDataLineById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.getDataLineById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateLine")
    public ResponseEntity<String> createLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.createLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailLine")
    public ResponseEntity<String> detailLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.detailLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditLine")
    public ResponseEntity<String> editLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.editLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusLine")
    public ResponseEntity<String> setStatusLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.setStatusLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListLine")
    public ResponseEntity<String> getListLine(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.getListLine(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
    @PostMapping("/GetListLine1")
    public ResponseEntity<String> getListLine1(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.getListLine1(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }

    @PostMapping("/GetListLineFull")
    public ResponseEntity<String> getListLineFull(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterLineService.getListLineFull(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
}
