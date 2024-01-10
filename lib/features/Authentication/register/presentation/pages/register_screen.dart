import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Chips'),
      ),
      body: SkillsWidget(),
    );
  }
}

class SkillsWidget extends StatefulWidget {
  @override
  _SkillsWidgetState createState() => _SkillsWidgetState();
}

class _SkillsWidgetState extends State<SkillsWidget> {
  TextEditingController _controller = TextEditingController();
  List<String> _suggestions = [
    "Apple",
    "Banana",
    "Cherry"
  ]; // Example suggestions
  List<String> _selectedChips = [];
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateOverlay);
  }

  void _updateOverlay() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    _overlayEntry!.remove();
    if (_controller.text.isNotEmpty) {
      _overlayEntry = _createOverlayEntry(size);
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  OverlayEntry _createOverlayEntry(Size size) {
    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height + 5.0),
          child: Material(
            elevation: 4.0,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: _suggestions.map((suggestion) {
                return ListTile(
                  title: Text(suggestion),
                  onTap: () {
                    setState(() {
                      _selectedChips.add(suggestion);
                      _controller.clear();
                    });
                    _overlayEntry?.remove();
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CompositedTransformTarget(
          link: _layerLink,
          child: TextField(
            controller: _controller,
            maxLines: null, // Allows multiline
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
          ),
        ),
        Wrap(
          children: _selectedChips.map((chip) {
            return InputChip(
              label: Text(chip),
              onDeleted: () {
                setState(() {
                  _selectedChips.remove(chip);
                });
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _overlayEntry?.dispose();
    super.dispose();
  }
}
