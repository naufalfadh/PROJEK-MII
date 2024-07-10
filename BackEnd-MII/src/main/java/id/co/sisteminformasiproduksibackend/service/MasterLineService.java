package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterLineService {
    String getDataLine(Map<String, Object> data);
    String getDataLineById(Map<String, Object> data);
    String createLine(Map<String, Object> data);
    String detailLine(Map<String, Object> data);
    String editLine(Map<String, Object> data);
    String setStatusLine(Map<String, Object> data);
    String getListLine(Map<String, Object> data);
    String getListLine1(Map<String, Object> data);
    String getListLineFull(Map<String, Object> data);
}

