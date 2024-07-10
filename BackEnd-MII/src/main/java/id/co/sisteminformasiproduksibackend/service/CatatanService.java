package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface CatatanService {
    String getDataCatatan(Map<String, Object> data);
    String getDataCatatanById(Map<String, Object> data);
    String createCatatan(Map<String, Object> data);
    String detailCatatan(Map<String, Object> data);
    String editCatatan(Map<String, Object> data);
    String setStatusCatatan(Map<String, Object> data);
    String getListCatatan(Map<String, Object> data);
}

