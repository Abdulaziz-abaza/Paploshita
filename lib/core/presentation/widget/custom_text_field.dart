import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.hintText,
      this.titleText,
      this.showTitle = false,
      this.controller,
      this.focusNode,
      this.nextFocus,
      this.isEnabled = true,
      this.inputType = TextInputType.text,
      this.inputAction,
      // = TextInputAction.next,
      this.maxLines = null,
      this.onSuffixTap,
      this.fillColor,
      this.onSubmit,
      this.onChanged,
      this.capitalization = TextCapitalization.none,
      this.isCountryPicker = false,
      this.isShowBorder = false,
      this.isShowSuffixIcon = false,
      this.onTap,
      this.isPassword = false,
      this.suffixIcon,
      this.prefixIcon,
      this.inputDecoration,
      this.minLines = 1,
      this.onValidate,
      this.onSaved})
      : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction? inputAction;
  final Color? fillColor;
  final int? maxLines;
  final int minLines;

  final bool isPassword;
  final String? titleText;
  final bool showTitle;
  final bool isCountryPicker;
  final bool isShowBorder;
  final bool isShowSuffixIcon;
  final Function? onTap;
  final Function? onChanged;
  final Function? onSuffixTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onSubmit;
  final bool isEnabled;
  final TextCapitalization capitalization;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? onValidate;
  final Function(String?)? onSaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showTitle == true)
          TextApp(
            text: widget.titleText ?? widget.hintText ?? '',
            style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.regular),
          ),
        if (widget.showTitle == true) const SizedBox(height: 6),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: widget.isPassword == true ? 1 : widget.maxLines,
          minLines: widget.minLines,
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Theme.of(context).textTheme.bodyLarge!.color,
              fontSize: AppDimensions.fontSizeLarge),
          textInputAction: widget.inputAction,
          keyboardType: widget.inputType,
          cursorColor: Theme.of(context).primaryColor,
          textCapitalization: widget.capitalization,
          enabled: widget.isEnabled,
          autofocus: false,
          onSaved: widget.onSaved,
          //onChanged: widget.isSearch ? widget.languageProvider.searchLanguage : null,
          obscureText: widget.isPassword == true ? _obscureText : false,
          inputFormatters: widget.inputType == TextInputType.phone
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9+]'))
                ]
              : null,
          decoration: widget.inputDecoration ??
              InputDecoration(
                errorStyle: context.textStyle.copyWith(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: AppDimensions.fontSizeSmall),
                focusedBorder: getBorder(),
                disabledBorder: getBorder(),
                enabledBorder: getBorder(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
                border: getBorder(),
                isDense: true,
                hintText: widget.hintText ?? '',
                fillColor: widget.fillColor ?? context.color.whiteColor,
                hintStyle: context.textStyle.copyWith(
                    fontSize: AppDimensions.fontSizeLarge,
                    color: context.color.hintColor),
                filled: true,
                prefixIcon: widget.prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: AppDimensions.paddingSizeLarge,
                            right: AppDimensions.paddingSizeSmall),
                        child: widget.prefixIcon,
                      )
                    : const SizedBox.shrink(),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 23, maxHeight: 20),
                suffixIcon: (widget.suffixIcon != null || widget.isPassword)
                    ? widget.isPassword
                        ? IconButton(
                            icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.3)),
                            onPressed: _toggle)
                        : widget.suffixIcon
                    : null,
              ),
          onTap: widget.onTap as void Function()?,
          onFieldSubmitted: (text) => widget.nextFocus != null
              ? FocusScope.of(context).requestFocus(widget.nextFocus)
              : widget.onSubmit != null
                  ? widget.onSubmit!(text)
                  : null,
          onChanged: widget.onChanged as void Function(String)?,
          validator: widget.onValidate != null ? widget.onValidate! : null,
        ),
      ],
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  OutlineInputBorder getBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          style: widget.isShowBorder ? BorderStyle.solid : BorderStyle.none,
          width: widget.isShowBorder ? 1 : 0,
          color: context.color.borderColor!,
        ),
      );
}

class CustomTextFieldWithNewLine extends StatefulWidget {
  const CustomTextFieldWithNewLine(
      {Key? key,
      this.hintText,
      this.titleText,
      this.showTitle = false,
      this.controller,
      this.focusNode,
      this.nextFocus,
      this.isEnabled = true,
      this.inputType = TextInputType.text,
      this.inputAction,
      // = TextInputAction.next,
      this.maxLines = null,
      this.onSuffixTap,
      this.fillColor,
      this.onSubmit,
      this.onChanged,
      this.capitalization = TextCapitalization.none,
      this.isCountryPicker = false,
      this.isShowBorder = true,
      this.isShowSuffixIcon = false,
      this.onTap,
      this.isPassword = false,
      this.suffixIcon,
      this.prefixIcon,
      this.inputDecoration,
      this.minLines = 1,
      this.onValidate,
      this.onSaved})
      : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction? inputAction;
  final Color? fillColor;
  final int? maxLines;
  final int minLines;

  final bool isPassword;
  final String? titleText;
  final bool showTitle;
  final bool isCountryPicker;
  final bool isShowBorder;
  final bool isShowSuffixIcon;
  final Function? onTap;
  final Function? onChanged;
  final Function? onSuffixTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onSubmit;
  final bool isEnabled;
  final TextCapitalization capitalization;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? onValidate;
  final Function(String?)? onSaved;

  @override
  State<CustomTextFieldWithNewLine> createState() =>
      _CustomTextFieldWithNewLineState();
}

class _CustomTextFieldWithNewLineState
    extends State<CustomTextFieldWithNewLine> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      TextSpan text = new TextSpan(
        text: widget.controller?.text,
      );

      TextPainter tp = new TextPainter(
        text: text,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.left,
      );
      tp.layout(maxWidth: size.maxWidth);

      int lines = (tp.size.height / tp.preferredLineHeight).ceil();
      int maxLines = 10;

      return TextFormField(
        onChanged: widget.onChanged as void Function(String)?,
        textInputAction: null,
        controller: widget.controller,
        maxLines: lines < maxLines ? null : maxLines,
        decoration: widget.inputDecoration ??
            InputDecoration(
              errorStyle: context.textStyle.copyWith(
                  color: Theme.of(context).colorScheme.error,
                  fontSize: AppDimensions.fontSizeSmall),
              focusedBorder: getBorder(),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor.withOpacity(0.4),
                ),
              ),
              enabledBorder: getBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
              border: getBorder(),
              isDense: true,
              hintText: widget.hintText ?? '',
              fillColor: widget.fillColor ?? context.color.whiteColor,
              hintStyle: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeLarge,
                  color: context.color.hintColor),
              filled: true,
              prefixIcon: widget.prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.only(
                          left: AppDimensions.paddingSizeLarge,
                          right: AppDimensions.paddingSizeSmall),
                      child: widget.prefixIcon,
                    )
                  : const SizedBox.shrink(),
              prefixIconConstraints:
                  const BoxConstraints(minWidth: 23, maxHeight: 20),
              suffixIcon: (widget.suffixIcon != null || widget.isPassword)
                  ? widget.isPassword
                      ? IconButton(
                          icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color:
                                  Theme.of(context).hintColor.withOpacity(0.3)),
                          onPressed: () {})
                      : widget.suffixIcon
                  : null,
            ),
      );
    });
  }

  OutlineInputBorder getBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          style: widget.isShowBorder ? BorderStyle.solid : BorderStyle.none,
          width: widget.isShowBorder ? 1 : 0,
          color: context.color.borderColor!,
        ),
      );
}
