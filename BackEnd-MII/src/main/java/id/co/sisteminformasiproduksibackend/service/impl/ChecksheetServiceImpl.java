package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.ChecksheetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class ChecksheetServiceImpl implements ChecksheetService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    @Override
    public String getDataChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataChecksheet", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getDataChecksheetById(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataChecksheetById", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String createChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_createChecksheet", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String detailChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_detailChecksheet", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String editChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_editChecksheet", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String setStatusChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_setStatusChecksheet", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListChecksheet(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListChecksheet", dataList.toArray(new String[0]));
        return result;
    }
}
