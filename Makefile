BIN = ass2srt        \
      bat            \
      cln            \
      ds             \
      evl            \
      flac2mp3       \
      formatdisk     \
      lscan          \
      mkarchusb      \
      mnt            \
      mp42mkv        \
      mpl            \
      parity         \
      pingie         \
      readmanpage    \
      rmcookies      \
      sext           \
      si             \
      todo           \
      tum            \
      urxvt-light    \
      vidinfo        \
      wav2mp3.sh     \
      yt

PREFIX = ${HOME}/bin

install:
	@cd bin; for b in ${BIN}; do chmod +x "$$b"; done
	@echo installing scripts in ${PREFIX}
	@mkdir -p ${PREFIX}
	@cd bin; for b in ${BIN}; do cp -f "$$b" ${PREFIX}/; done

uninstall:
	@cd ${PREFIX}; for b in ${BIN}; do rm "$$b"; done
	@echo uninstalled scripts from ${PREFIX}

.PHONY: install uninstall
