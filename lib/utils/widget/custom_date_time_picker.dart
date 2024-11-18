import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDateTimePicker extends StatefulWidget {
  const CustomDateTimePicker({
    super.key,
    this.height,
    this.backgroundColor,
    this.hintText = '',
    required this.onChange,
    this.isDateOnly = false,
    this.isTimeOnly = false,
    this.firstDate,
    this.lastDate,
    this.initialDate,
    this.label,
    this.isRequired = false,
    this.validatedText,
    this.isValidated = false,
  });
  final double? height;
  final Color? backgroundColor;
  final String hintText;
  final Function(String? value) onChange;
  final bool isDateOnly;
  final bool isTimeOnly;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? initialDate;
  final String? label;
  final bool? isRequired;
  final String? validatedText;
  final bool? isValidated;

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (widget.isTimeOnly) {
          await showTimePicker(
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blue,
                  ),
                ),
                child: child!,
              );
            },
            context: context,
            initialTime: selectedTime ?? TimeOfDay.now(),
          ).then((v) {
            if (v != null) {
              setState(() {
                selectedTime = v;
                widget.onChange(
                    '${selectedTime?.hour}:${selectedTime?.minute}:00.000');
              });
            }
          });
        } else {
          await showDatePicker(
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Colors.blue,
                  ),
                ),
                child: child!,
              );
            },
            context: context,
            initialDate: widget.initialDate != null && widget.initialDate != ''
                ? DateTime.parse(widget.initialDate!)
                : DateTime.now(),
            firstDate: widget.firstDate ?? DateTime(DateTime.now().year - 100),
            lastDate: widget.lastDate ?? DateTime(DateTime.now().year + 100),
          ).then((v) async {
            if (v != null) {
              if (widget.isDateOnly) {
                widget.onChange(v.toString().split(' ')[0]);
              } else {
                await showTimePicker(
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: const ColorScheme.light(
                          primary: Colors.blue,
                        ),
                      ),
                      child: child!,
                    );
                  },
                  context: context,
                  initialTime: selectedTime ?? TimeOfDay.now(),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectedTime = value;
                      widget.onChange(
                          '${v.toString().split(' ')[0]} ${selectedTime?.hour}:${selectedTime?.minute}:00.000');
                    });
                  }
                });
              }
              setState(() {});
            }
          });
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (widget.label != null)
                Text(
                  widget.label!,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              if (widget.isRequired! && widget.label != null)
                const Icon(
                  Icons.star,
                  size: 10,
                  color: Colors.red,
                )
            ],
          ),
          Gap(widget.label != null ? 3 : 0),
          Container(
            height: widget.height ?? 45,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: widget.backgroundColor ??
                  Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.isDateOnly
                    ? Expanded(
                        child: Text(
                          widget.initialDate != null && widget.initialDate != ''
                              ? widget.initialDate!
                              : widget.hintText,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      )
                    : widget.isTimeOnly
                        ? Expanded(
                            child: Text(
                              selectedTime == null
                                  ? widget.hintText
                                  : '${selectedTime?.hour}:${selectedTime?.minute}:00.000',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          )
                        : Expanded(
                            child: Text(
                              selectedTime == null
                                  ? widget.initialDate != null &&
                                          widget.initialDate != ''
                                      ? widget.initialDate!
                                      : widget.hintText
                                  : ' ${widget.initialDate} ${selectedTime?.hour}:${selectedTime?.minute}:00.000',
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                Row(
                  children: [
                    if (widget.isRequired! && widget.label == null)
                      const Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.red,
                      ),
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                      size: 19,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (widget.isValidated! && widget.validatedText != '')
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    widget.validatedText ?? 'Invalid',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.red),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
