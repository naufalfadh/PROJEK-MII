package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.MasterShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/MasterShift")
public class MasterShiftRest {
    @Autowired
    private MasterShiftService masterShiftService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/GetDataShift")
    public ResponseEntity<String> getDataShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.getDataShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/GetDataShiftById")
    public ResponseEntity<String> getDataShiftById(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.getDataShiftById(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/CreateShift")
    public ResponseEntity<String> createShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.createShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }
    @PostMapping("/CreateShift2")
    public ResponseEntity<String> createShift2(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.createShift2(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailShift")
    public ResponseEntity<String> detailShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.detailShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }

    @PostMapping("/EditShift")
    public ResponseEntity<String> editShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.editShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to edit data", e);
        }
    }

    @PostMapping("/SetStatusShift")
    public ResponseEntity<String> setStatusShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.setStatusShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to set status", e);
        }
    }

    @PostMapping("/GetListShift")
    public ResponseEntity<String> getListShift(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterShiftService.getListShift(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get list", e);
        }
    }
}
