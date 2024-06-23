import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_proj/extensions/string.dart';

class UlCapitalizeExtension extends HtmlExtension {
  @override
  Set<String> get supportedTags => {"ul"};

  @override
  InlineSpan build(ExtensionContext context) {
    if (context.elementName == "ul") {
      final isLastUl = context.element?.parent?.children
              .where((child) => child.localName == 'ul')
              .last ==
          context.element;

      if (isLastUl) {
        final liElement =
            context.elementChildren.where((child) => child.localName == "li");

        for (var child in liElement) {
          child.text = child.text.capitalize();
        }

        return WidgetSpan(
          child: Html(
            data: context.element?.outerHtml ?? '',
          ),
        );
      }
    }
    return WidgetSpan(
      child: CssBoxWidget.withInlineSpanChildren(
        children: context.inlineSpanChildren!,
        style: Style(),
      ),
    );
  }
}
