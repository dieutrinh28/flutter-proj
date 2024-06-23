import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class FieldSetExtension extends HtmlExtension {
  @override
  Set<String> get supportedTags => {'fieldset'};

  @override
  InlineSpan build(ExtensionContext context) {
    if (context.elementName == "fieldset") {
      final legendElement = context.elementChildren.firstWhere(
        (child) => child.localName == 'legend',
      );
      final legendHtml = legendElement.innerHtml;

      final childrenHtml = context.elementChildren
          .where((child) => child.localName != 'legend')
          .map((child) => child.outerHtml)
          .join();

      return WidgetSpan(
        child: Container(
          margin: const EdgeInsets.only(top: 16.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (legendHtml.isNotEmpty)
                Html(
                  shrinkWrap: true,
                  data: legendHtml,
                ),
              Html(
                shrinkWrap: true,
                data: childrenHtml,
                style: {
                  "p": Style(
                      padding: HtmlPaddings.all(4),
                      margin: Margins.only(top: 4.0)),
                  "ul": Style(
                      padding: HtmlPaddings.all(4),
                      margin: Margins.only(top: 4.0)),
                  "li": Style(
                    padding: HtmlPaddings.all(4),
                  ),
                },
              ),
            ],
          ),
        ),
      );
    }
    return WidgetSpan(
      child: CssBoxWidget.withInlineSpanChildren(
        children: context.inlineSpanChildren!,
        style: Style(),
      ),
    );
  }
}
