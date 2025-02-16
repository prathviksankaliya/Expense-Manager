import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/utils/app_colors.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField(
      {super.key,
        this.controller,
        this.textLabel,
        this.isSecure = false,
        this.hintText,
        this.validationCallback,
        this.contentPadding,
        this.maxLength,
        this.keyboardType,
        this.minLines,
        this.maxLines,
        this.borderRadius,
        this.onClick,
        this.enabled,
        this.bgColor,
        this.focusBorderSide,
        this.errorText,
        this.onChange,
        this.readOnly = false,
        this.isRequired = false,
        this.inputFormatters,
        this.iconPosition,
        this.prefixIcon,
        this.suffixIcon,
        this.suffixIconOnTap,
        this.prefixIconOnTap,
        this.focusNode});

  final TextEditingController? controller;
  final bool isSecure;
  final int? iconPosition;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? Function(String?)? validationCallback;
  final String? textLabel;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final TextInputType? keyboardType;
  final double? borderRadius;
  final void Function()? onClick;
  final void Function()? suffixIconOnTap;
  final void Function()? prefixIconOnTap;
  final void Function(String)? onChange;
  final bool? enabled;
  final Color? bgColor;
  final BorderSide? focusBorderSide;
  final String? errorText;
  final bool readOnly;
  final bool isRequired;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // Get the text theme from the context
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (textLabel != null) ...[
          (isRequired)
              ? Row(
            children: [
              Text(textLabel ?? "", style: textTheme.bodyMedium),
              const SizedBox(width: 3),
              Text("*", style: textTheme.bodyMedium?.copyWith(color: Colors.redAccent))
            ],
          )
              : Text(textLabel!, style: textTheme.bodyMedium),
          const SizedBox(height: 8),
        ],
        Container(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          constraints: BoxConstraints(minHeight: 40, maxHeight: maxLines == null ? 40 : double.infinity),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: errorText == null
                  ? Border(
                  bottom: (errorText != null && errorText!.trim().isNotEmpty)
                      ? BorderSide.none
                      : BorderSide(color: Colors.black12.withOpacity(0.03)),
                  right: BorderSide(
                    color: Colors.black12.withOpacity(0.03),
                  ))
                  : Border.all(color: Colors.redAccent),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.09),
                ),
                const BoxShadow(
                  color: Colors.white,
                  spreadRadius: -1,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
              ]),
          child: TextFormField(
            inputFormatters: inputFormatters,
            style: textTheme.bodyMedium,
            onTap: onClick,
            onChanged: onChange,
            focusNode: focusNode,
            enabled: enabled,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: keyboardType,
            validator: validationCallback,
            controller: controller,
            readOnly: readOnly,
            obscureText: isSecure,
            cursorColor: AppColors.primary,
            enableInteractiveSelection: true,
            maxLength: maxLength,
            minLines: minLines,
            maxLines: maxLines ?? 1,
            cursorErrorColor: AppColors.primary,
            decoration: InputDecoration(
                contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8), borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8),
                    borderSide: BorderSide(color: errorText == null ? AppColors.primary : Colors.transparent)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8), borderSide: BorderSide.none),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8), borderSide: BorderSide.none),
                prefixIcon: prefixIcon != null
                    ? GestureDetector(
                  onTap: prefixIconOnTap,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: prefixIcon,
                  ),
                )
                    : null,
                hintText: hintText,
                hintStyle: textTheme.bodyMedium,
                suffixIcon: suffixIcon != null
                    ? GestureDetector(
                  onTap: suffixIconOnTap,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: suffixIcon,
                  ),
                )
                    : null),
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(
            height: 4,
          ),
          Text(errorText!, style: textTheme.bodyMedium?.copyWith(color: Colors.redAccent)),
        ],
        const SizedBox(height: 16)
      ],
    );
  }
}
