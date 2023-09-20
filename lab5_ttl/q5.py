def change_value(d, keys, new_value):
    for key in keys[:-1]:
        d = d.setdefault(key, {})
    d[keys[-1]] = new_value

nested_dict = {...} # your nested dictionary
keys = [...] # a list of keys to access the nested key
new_value = ... # the new value you want to assign

change_value(nested_dict, keys, new_value)
