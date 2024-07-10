package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.MasterModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MasterModelServiceImpl implements MasterModelService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    @Override
    public String getDataModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataModel", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getDataModelById(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataModelById", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String createModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_createModel", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String detailModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_detailModel", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String editModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_editModel", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String setStatusModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_setStatusModel", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListModel(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListModel", dataList.toArray(new String[0]));
        return result;
    }
}
