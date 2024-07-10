package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.CatatanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class CatatanServiceImpl implements CatatanService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    @Override
    public String getDataCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataCatatan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getDataCatatanById(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataCatatanById", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String createCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_createCatatan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String detailCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_detailCatatan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String editCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_editCatatan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String setStatusCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_setStatusCatatan", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListCatatan(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListCatatan", dataList.toArray(new String[0]));
        return result;
    }

}
