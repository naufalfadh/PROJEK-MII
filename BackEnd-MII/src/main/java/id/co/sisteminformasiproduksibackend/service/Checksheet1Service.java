package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface Checksheet1Service {
    String getDataChecksheet1(Map<String, Object> data);
    String getDataChecksheet1ById(Map<String, Object> data);
    String getIdChecksheet1ByData(Map<String, Object> data);
    String  createChecksheet1(Map<String, Object> data);
    String detailChecksheet1(Map<String, Object> data);
    String editChecksheet1(Map<String, Object> data);
    String setStatusChecksheet1(Map<String, Object> data);
    String getListChecksheet1(Map<String, Object> data);

}

