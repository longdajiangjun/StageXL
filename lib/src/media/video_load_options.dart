part of stagexl.media;

class VideoLoadOptions {

  /// The application provides *mp4* files as an option to load video files.
  bool mp4;

  /// The application provides *webm* files as an option to load video files.
  bool webm;

  /// The application provides *ogg* files as an option to load video files.
  bool ogg;

  /// A list of alternative urls for video files in the case where the
  /// primary url does not work or the file type is not supported by the
  /// browser. If this value is null, the alternative urls are calcualted
  /// automatically based on the mp3, mp4, ogg, ac3 and wav properties.
  List<String> alternativeUrls;

  /// Do not stream the video but download the video file as a whole.
  /// A DataUrl string will be used for the VideoElement source.
  bool loadData;

  /// Use CORS to download the video. This is often necessary when you have
  /// to download video from a third party server.
  bool corsEnabled;

  //---------------------------------------------------------------------------

  VideoLoadOptions({
      this.mp4: false,
      this.webm: false,
      this.ogg: false,
      this.alternativeUrls: null,
      this.loadData: false,
      this.corsEnabled: false
    });

  VideoLoadOptions clone() => new VideoLoadOptions(
      mp4: this.mp4, webm: this.webm, ogg: this.ogg,
      alternativeUrls: this.alternativeUrls,
      loadData: loadData);
}
