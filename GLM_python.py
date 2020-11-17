#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 16 12:28:45 2020

@author: uqxmo
"""

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import statsmodels.api as sm

dat2=dat2.head(20)
X=dat2['SCORESUM_LDL']
X=sm.add_constant(X) ## Design the matrix add a column of constant
model = sm.GLM(dat2['LDL_direct'],X).fit()
model.summary()
