FROM ubuntu:16.04

RUN apt-get update -qq \
  && apt-get install -y vorbis-tools alsa-utils wget \
  && apt-get clean \
  && rm -rf /var/cache/apt/lists/*

RUN wget https://upload.wikimedia.org/wikipedia/commons/9/9a/A_Dream_of_a_Witches%27_Sabbath_-_transcribed_by_Lt._Col._Jack_T._Cline_-_U.S._Navy_Band_Concert_Band.ogg -O /test.ogg
RUN wget https://upload.wikimedia.org/wikipedia/commons/b/b2/1889_recording_by_Otto_von_Bismarck.ogg -O /mono.ogg
RUN wget https://github.com/GNOME/gnome-media/raw/master/sound-theme/sounds/drip.ogg -O /drip.ogg

COPY etc /etc
COPY test.sh /test.sh
CMD ["/test.sh"]
