package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface ChecksheetService {
    String getDataChecksheet(Map<String, Object> data);
    String getDataChecksheetById(Map<String, Object> data);
    String createChecksheet(Map<String, Object> data);
    String detailChecksheet(Map<String, Object> data);
    String editChecksheet(Map<String, Object> data);
    String setStatusChecksheet(Map<String, Object> data);
    String getListChecksheet(Map<String, Object> data);
}

