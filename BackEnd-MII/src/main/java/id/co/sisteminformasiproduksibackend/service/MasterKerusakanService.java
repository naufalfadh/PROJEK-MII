package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterKerusakanService {
    String getDataKerusakan(Map<String, Object> data);
    String getDataKerusakanById(Map<String, Object> data);
    String createKerusakan(Map<String, Object> data);
    String detailKerusakan(Map<String, Object> data);
    String editKerusakan(Map<String, Object> data);
    String setStatusKerusakan(Map<String, Object> data);
    String getListKerusakan(Map<String, Object> data);
}

