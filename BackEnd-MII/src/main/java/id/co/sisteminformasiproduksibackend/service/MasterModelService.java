package id.co.sisteminformasiproduksibackend.service;

import java.util.Map;

public interface MasterModelService {
    String getDataModel(Map<String, Object> data);
    String getDataModelById(Map<String, Object> data);
    String createModel(Map<String, Object> data);
    String detailModel(Map<String, Object> data);
    String editModel(Map<String, Object> data);
    String setStatusModel(Map<String, Object> data);
    String getListModel(Map<String, Object> data);
}

