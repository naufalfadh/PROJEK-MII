package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterShiftService {
    String getDataShift(Map<String, Object> data);
    String getDataShiftById(Map<String, Object> data);
    String createShift(Map<String, Object> data);
    String createShift2(Map<String, Object> data);
    String detailShift(Map<String, Object> data);
    String editShift(Map<String, Object> data);
    String setStatusShift(Map<String, Object> data);
    String getListShift(Map<String, Object> data);
}

