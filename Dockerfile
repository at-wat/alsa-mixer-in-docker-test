FROM ubuntu:16.04

RUN apt-get update -qq \
  && apt-get install -y vorbis-tools alsa-utils \
  && apt-get clean \
  && rm -rf /var/cache/apt/lists/*

COPY etc /etc
ADD https://upload.wikimedia.org/wikipedia/commons/9/9a/A_Dream_of_a_Witches%27_Sabbath_-_transcribed_by_Lt._Col._Jack_T._Cline_-_U.S._Navy_Band_Concert_Band.ogg /test.ogg
ADD https://upload.wikimedia.org/wikipedia/commons/b/b2/1889_recording_by_Otto_von_Bismarck.ogg /test2.ogg
ADD https://github.com/GNOME/gnome-media/raw/master/sound-theme/sounds/drip.ogg /drip.ogg

COPY test.sh /test.sh
CMD ["/test.sh"]
