# -*- coding: utf-8 -*-
import re
import sys
import webbrowser
try:
    import dearpygui.dearpygui as dpg
    from psicoanalisis.__main__ import main
except ImportError:
    webbrowser.open("https://learn.microsoft.com/es-es/cpp/windows/latest-supported-vc-redist?view=msvc-170#latest-microsoft-visual-c-redistributable-version")
    sys.exit("No vcredist")

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw|\.exe)?$', '', sys.argv[0])
    sys.exit(main())