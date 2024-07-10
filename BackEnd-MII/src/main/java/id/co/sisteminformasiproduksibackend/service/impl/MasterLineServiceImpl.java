package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.MasterLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MasterLineServiceImpl implements MasterLineService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    @Override
    public String getDataLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataLine", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getDataLineById(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getDataLineById", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String createLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_createLine", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String detailLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_detailLine", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String editLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_editLine", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String setStatusLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_setStatusLine", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListLine(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListLine", dataList.toArray(new String[0]));
        return result;
    }
    @Override
    public String getListLine1(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListLine1", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListLineFull(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pro_getListLineFull", dataList.toArray(new String[0]));
        return result;
    }
}
