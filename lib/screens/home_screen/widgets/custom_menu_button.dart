import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 74,
      left: 333,
      child: GestureDetector(
        onTapDown: (TapDownDetails details) {
          _showDropdown(context, details.globalPosition);
        },
        child: Container(
          width: 37.81,
          height: 37.81,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF43B888),
          ),
          child: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _showDropdown(BuildContext context, Offset position) {
    final overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    final menuPosition = RelativeRect.fromRect(
      Rect.fromLTWH(position.dx, position.dy, 0, 0),
      overlay.paintBounds,
    );

    showMenu(
      context: context,
      position: menuPosition,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      constraints: const BoxConstraints(
        minWidth: 189,
        minHeight: 263,
      ),
      items: _menuItems(),
    ).then((value) {
      if (value != null) {
        debugPrint("Selected: $value");
      }
    });
  }

  List<PopupMenuEntry<String>> _menuItems() {
    final List<String> options = [
      "Dashboard",
      "Account",
      "Family",
      "Assets",
      "Questions",
      "Answers",
      "Books",
      "Log out"
    ];

    return options
        .map((option) => PopupMenuItem(
              value: option.toLowerCase(),
              child: Text(
                option,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ))
        .toList();
  }
}
