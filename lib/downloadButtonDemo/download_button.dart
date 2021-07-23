import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DownloadState { noteDownloaded, fetchingDownload, downloading, downloaded }

class DownloadButton extends StatefulWidget {
  const DownloadButton({
    Key? key,
    required this.state,
    this.transitionDuration = const Duration(milliseconds: 500),
    this.progress = 0.0,
  }) : super(key: key);

  final DownloadState state;
  final Duration transitionDuration;
  final double progress;

  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool get _isDownloading => widget.state == DownloadState.downloading;

  bool get _isFetching => widget.state == DownloadState.fetchingDownload;

  bool get _isDownloaded => widget.state == DownloadState.downloaded;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildButtonShape(child: _buildText()),
        _buildDownloadingProgress()
      ],
    );
  }

  Widget _buildDownloadingProgress() {
    return Positioned.fill(
      child: AnimatedOpacity(
        duration: widget.transitionDuration,
        opacity: _isDownloading || _isFetching ? 1.0 : 0.0,
        curve: Curves.ease,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildProgressIndicator(),
            if (_isDownloading)
              const Icon(
                Icons.stop,
                size: 14.0,
                color: CupertinoColors.activeBlue,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonShape({required Widget child}) {
    return AnimatedContainer(
      duration: widget.transitionDuration,
      curve: Curves.easeIn,
      width: double.infinity,
      decoration: _isDownloading || _isFetching
          ? ShapeDecoration(
              shape: const CircleBorder(), color: Colors.white.withOpacity(0.2))
          : ShapeDecoration(
              shape: StadiumBorder(),
              color: CupertinoColors.lightBackgroundGray),
      child: child,
    );
  }

  Widget _buildText() {
    final text = _isDownloaded ? 'OPEN' : 'GET';
    final opacity = _isDownloading || _isFetching ? 0.0 : 1.0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: AnimatedOpacity(
        duration: widget.transitionDuration,
        opacity: opacity,
        curve: Curves.easeIn,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button?.copyWith(
                fontWeight: FontWeight.bold,
                color: CupertinoColors.activeBlue,
              ),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white.withOpacity(0.0),
        valueColor: AlwaysStoppedAnimation(CupertinoColors.lightBackgroundGray),
        strokeWidth: 2.0,
        value: null,
      ),
    );
  }
}
