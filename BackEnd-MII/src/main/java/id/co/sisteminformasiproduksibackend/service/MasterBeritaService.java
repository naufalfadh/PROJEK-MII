package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterBeritaService {
    String getDataBerita(Map<String, Object> data);
    String getDataBeritaById(Map<String, Object> data);
    String createBerita(Map<String, Object> data);
    String detailBerita(Map<String, Object> data);
    String editBerita(Map<String, Object> data);
    String setStatusBerita(Map<String, Object> data);
    String getListBerita(Map<String, Object> data);
}

