// static
import 'package:flutter/material.dart';

Iterable<Widget> divideTiles(
    {BuildContext context,
    @required Iterable<Widget> tiles,
    Color color}) sync* {
  assert(tiles != null);
  assert(color != null || context != null);

  final Iterator<Widget> iterator = tiles.iterator;
  final bool isNotEmpty = iterator.moveNext();

  final Decoration decoration = BoxDecoration(
    border: Border(
      bottom: Divider.createBorderSide(context, color: color),
    ),
  );

  Widget tile = iterator.current;
  while (iterator.moveNext()) {
    yield DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: decoration,
      child: tile,
    );
    tile = iterator.current;
  }
  if (isNotEmpty) yield tile;
}
