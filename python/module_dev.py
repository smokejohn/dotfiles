MODULE_PATH = "/path/to/module/folder/__init__.py"
MODULE_NAME = "modulename"

import importlib
import sys
from importlib import reload

spec = importlib.util.spec_from_file_location(MODULE_NAME, MODULE_PATH)
module = importlib.util.module_from_spec(spec)
sys.modules[spec.name] = module 
spec.loader.exec_module(module)

import modulename
# import modulename.file
# from modulename import file
# from modulename.file import function

#always reload module or alias while developing
modulename = reload(modulename)
