package id.co.sisteminformasiproduksibackend.service.impl;

import id.co.sisteminformasiproduksibackend.repository.PolmanAstraRepository;
import id.co.sisteminformasiproduksibackend.service.MasterBeritaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MasterBeritaServiceImpl implements MasterBeritaService {
    @Autowired
    PolmanAstraRepository polmanAstraRepository;

    @Override
    public String getDataBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_getDataBerita", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getDataBeritaById(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_getDataBeritaById", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String createBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_createBerita", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String detailBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_detailBerita", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String editBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_editBerita", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String setStatusBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_setStatusBerita", dataList.toArray(new String[0]));
        return result;
    }

    @Override
    public String getListBerita(Map<String, Object> data) {
        List<String> dataList = new ArrayList<>();
        for (Map.Entry<String, Object> entry : data.entrySet()) {
            dataList.add(entry.getValue().toString());
        }
        String result = polmanAstraRepository.callProcedure("pks_getListBerita", dataList.toArray(new String[0]));
        return result;
    }
}
