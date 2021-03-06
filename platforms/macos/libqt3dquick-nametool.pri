LIBQT3DQUICK_DIR      = Qt3DQuick.framework/Versions/5
LIBQT3DQUICK_FILE     = Qt3DQuick
LIBQT3DQUICK_FILEPATH = $$LIBQT3DQUICK_DIR/$$LIBQT3DQUICK_FILE

LIBQT3DQUICK_INSTALL_NAME_TOOL = install_name_tool -change $$(QTDIR)/lib/$$LIBQT3DQUICK_FILEPATH \
            @executable_path/../$$LIBSDIR/$$LIBQT3DQUICK_DIR/$$LIBQT3DQUICK_FILE

contains(QT, 3dquick) {
    !isEmpty(nametool.commands) {
        nametool.commands += "&&"
    }

    nametool.commands += $$LIBQT3DQUICK_INSTALL_NAME_TOOL $$OUTFILE
}

LIBQT3DQUICK.path   = $$INSTALLROOT/$$LIBSDIR/$$LIBQT3DQUICK_DIR
LIBQT3DQUICK.files += $$(QTDIR)/lib/$$LIBQT3DQUICK_FILEPATH

LIBQT3DQUICK_INSTALL_NAME_TOOL_ID = install_name_tool -id @executable_path/../$$LIBSDIR/$$LIBQT3DQUICK_DIR/$$LIBQT3DQUICK_FILE \
                        $$INSTALLROOT/$$LIBSDIR/$$LIBQT3DQUICK_DIR/$$LIBQT3DQUICK_FILE
LIBQT3DQUICK_ID.path     = $$INSTALLROOT/$$LIBSDIR/$$LIBQT3DQUICK_DIR
LIBQT3DQUICK_ID.commands = $$LIBQT3DQUICK_INSTALL_NAME_TOOL_ID
