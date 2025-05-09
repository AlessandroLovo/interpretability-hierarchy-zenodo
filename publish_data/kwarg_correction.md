# Kwarg correction

In the papers we published so far the raw data we used was gridded over the whole globe.
However, to publish a more lightweight dataset, we provide data only for the Northern Hemisphere.

For this reason, if you use this data to reproduce our results, you should change the kwargs in the config files that we provide together with the code for the papers.

This file is a guide on how to do it

---

Inside each 'run' folder where a neural network is trained you will find a `config.json` file that contains a nested dictionary with all the parameters from data loading to network architecture and its training.

What is relevant from us is the part on data loading, inside `load_data_kwargs`

Once you download the data, define variable `mylocal` as the absolute path pointing to the parent of `Data_CESM` directory, then set the kwarg 'mylocal' in the dictionary to `'mylocal': [mylocal]`.

If there is a specified absolute path for `area_integral_override`, for instance `'.../Data_CESM/ANO_t2m_France.nc'`, change it to `f'{mylocal}/Data_CESM/ANO_t2m_France.nc'`

You should also change `'preprefix'` from `'North_Anomalies_'` to `'NH_Anomalies_'`

And finally correct the `lat_start` and `lat_end` values by subtracting 96, for instance

```
'lat_start': 96,
'lat_end': 191,
```

will turn into

```
'lat_start': 0,
'lat_end': 95,
```

---

You can apply these changes by manually editing the config files, but if you use the `general_purpose` tools, you can do this at once as in the following for the paper *Tackling the Accuracy-Interpretability Trade-off in a Hierarchy of Machine Learning Models for the Prediction of Extreme Heatwaves*


```python
import general_purpose.utilities as ut
import os

config_path = 'path/to/config.json'
mylocal = 'path/to/data'

# make a copy
os.copy(config_path, f'{config_path[:-5]}_old.json')

# get config dict
config = ut.json2dict(config_path)

kwarg_corrections = {
    'lat_start': 0,
    'lat_end': 95,
    'mylocal': [mylocal],
    'preprefix': 'NH_Anomalies_',
    'area_integral_override': {'zg500': f'{mylocal}/Data_CESM/ANO_t2m_France.nc'}
}

ut.set_values_recursive(config, kwarg_corrections, inplace=True)

# overwrite original config
ut.dict2json(config, config_path)
```

And now you are ready to run the code for loading data and training neural networks.