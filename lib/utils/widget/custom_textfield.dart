import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import 'custom_validate.dart';

class CustomTextField extends StatefulWidget {
  final String? initialValue;
  final GestureTapCallback? ontapIcon;
  final String? title;
  final String? validateText;
  final ValueChanged<String>? onChange;
  final ValueChanged<bool>? onFocusChange;
  final bool isRequired;
  final String? hintText;
  final GestureTapCallback? onTap;
  final FormFieldSetter<String>? onSave;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isValidate;
  final TextEditingController? controller;
  final bool? isObscureText;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;
  final TextInputType? keyboard;
  final FocusNode? focusNode;
  final int maxLine;
  final int? minLine;
  final bool? noBorder;
  final double? height;
  final bool isReadOnly;
  final TextDirection? textDirection;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isMaxline;
  final String? labelText;
  final Widget? label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;

  const CustomTextField({
    this.prefixIcon,
    this.validator,
    this.isReadOnly = false,
    this.noBorder = false,
    this.maxLine = 1,
    this.minLine,
    this.title,
    this.isObscureText = false,
    this.isRequired = false,
    this.focusNode,
    this.onFocusChange,
    this.validateText,
    super.key,
    this.controller,
    this.initialValue,
    this.onChange,
    this.hintText,
    this.onTap,
    this.onSave,
    this.suffixIcon,
    this.isValidate = false,
    this.ontapIcon,
    this.height,
    this.textDirection,
    this.inputFormatters,
    this.hintStyle,
    this.keyboard,
    this.isMaxline = false,
    this.labelText,
    this.label,
    this.labelStyle,
    this.padding,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (widget.title != null)
          Row(
            children: [
              Text(
                widget.title ?? '',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const Gap(2),
              widget.isRequired
                  ? const Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.red,
                    )
                  : const SizedBox(),
            ],
          ),
        if (widget.title != null)
          const SizedBox(
            height: 5,
          ),
        Container(
          height:
              widget.height ?? (widget.maxLine != 1 ? widget.maxLine * 22 : 45),
          alignment: Alignment.center,
          padding: widget.padding ?? const EdgeInsets.only(left: 15, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.noBorder == false
                ? Theme.of(context).colorScheme.surface
                : widget.isValidate!
                    ? Colors.red[100]
                    : Theme.of(context).cardColor,
            border: Border.all(
              width: 1,
              color: widget.noBorder == false
                  ? Theme.of(context).disabledColor
                  : Colors.transparent,
            ),
          ),
          child: Focus(
            onFocusChange: widget.onFocusChange,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onTap: widget.onTap,
                    keyboardType: widget.keyboard,
                    inputFormatters: widget.inputFormatters,
                    textDirection: widget.textDirection ?? TextDirection.ltr,
                    readOnly: widget.isReadOnly,
                    initialValue: widget.initialValue,
                    controller: widget.controller,
                    style: Theme.of(context).textTheme.displayMedium,
                    onChanged: widget.onChange,
                    obscureText: widget.isObscureText!,
                    validator: widget.validator,
                    maxLines: widget.maxLine,
                    minLines: widget.minLine,
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(color: Colors.red),
                      border: InputBorder.none,
                      focusColor: Theme.of(context).colorScheme.surface,
                      counterText: '',
                      filled: false,
                      isDense: true,
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 20, maxHeight: 20),
                      suffixIconConstraints:
                          const BoxConstraints(minWidth: 20, maxHeight: 20),
                      suffixIcon: widget.suffixIcon != null
                          ? Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: InkWell(
                                  onTap: widget.ontapIcon,
                                  child: widget.suffixIcon!),
                            )
                          : const SizedBox(),
                      label: widget.label,
                      labelText: widget.labelText,
                      labelStyle: widget.labelStyle ??
                          TextStyle(color: Colors.grey.shade700, fontSize: 16),
                      prefixIcon: widget.prefixIcon,
                      hintText: widget.hintText,
                      hintStyle: widget.hintStyle ??
                          Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                widget.isRequired && widget.title == null
                    ? const SizedBox(
                        width: 11,
                        height: 11,
                        child: Icon(
                          Icons.star,
                          size: 10,
                          color: Colors.red,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
        if (widget.isValidate! && widget.validateText != null)
          SizedBox(
            height: 20,
            child: CustomValidate(
              validateText: widget.validateText,
            ),
          )
      ],
    );
  }
}
