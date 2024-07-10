package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface QrService {

    String createQr(Map<String, Object> data);
    String detailQr(Map<String, Object> data);
}

