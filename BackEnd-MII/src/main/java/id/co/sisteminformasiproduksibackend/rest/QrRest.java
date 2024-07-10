package id.co.sisteminformasiproduksibackend.rest;

import id.co.sisteminformasiproduksibackend.config.EncodeData;
import id.co.sisteminformasiproduksibackend.service.QrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/api/Qr")
public class QrRest {
    @Autowired
    private QrService masterQrService;

    @Autowired
    private EncodeData encodeData;

    @PostMapping("/CreateQr")
    public ResponseEntity<String> createQr(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterQrService.createQr(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to create data", e);
        }
    }

    @PostMapping("/DetailQr")
    public ResponseEntity<String> detailQr(@RequestBody Map<String, Object> data) {
        try {
            Map<String, Object> encodedData = encodeData.htmlEncodeObject(data);
            String result = masterQrService.detailQr(encodedData);
            return ResponseEntity.ok().body(result);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Failed to get data", e);
        }
    }


}
