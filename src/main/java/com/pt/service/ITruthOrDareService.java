package com.pt.service;

import java.util.List;

import com.pt.entity.TruthOrDare;

public interface ITruthOrDareService {
	public List<TruthOrDare> getTruthOrDareLst(int stanum,int offset);
	public List<TruthOrDare> getTruthOrDareAllLst();
}
