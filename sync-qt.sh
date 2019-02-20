#!/bin/sh
local_path=$1
projects="qtmultimedia qtnetworkauth qtmacextras qt3d qtlocation-mapboxgl qtlocation qtimageformats qtgraphicaleffects qtgamepad qtdoc qtdeclarative qtdatavis3d qtconnectivity qtcharts qtcanvas3d qtbase qtandroidextras qtactiveqt qt5 qtwebengine qtwebengine-chromium qtquickcontrols qtremoteobjects qttranslations qttools qtwebglplugin qtspeech qtscxml qtvirtualkeyboard qtpurchasing qtquickcontrols2 qtwebview qtwebchannel qtwebsockets qtwinextras qtx11extras qtserialport qtserialbus qtwayland qtsensors qtxmlpatterns qtscript qtsvg qtpim qtqa qtrepotools qtfeedback qtfeedback qtdeclarative-testsuites qtsystems qtwebkit qtquick1 qtenginio qtwebkit-examples qtdocgallery qtxmlpatterns-testsuites"
origin="https://github.com/tianj-zh"
upstream="https://github.com/qt"
for project in ${projects};
do ./sync-fork.sh ${local_path} ${project} ${origin} ${upstream};
done