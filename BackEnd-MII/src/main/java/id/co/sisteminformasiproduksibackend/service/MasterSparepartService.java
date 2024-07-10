package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterSparepartService {
    String getDataSparepart(Map<String, Object> data);
    String getDataSparepartById(Map<String, Object> data);
    String createSparepart(Map<String, Object> data);
    String detailSparepart(Map<String, Object> data);
    String editSparepart(Map<String, Object> data);
    String setStatusSparepart(Map<String, Object> data);
    String getListSparepart(Map<String, Object> data);
}

