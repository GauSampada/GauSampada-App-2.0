// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:delightful_toast/toast/utils/enums.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:table_calendar/table_calendar.dart';

// class CalendarTabBoking extends StatefulWidget {
//   final Function(DateTime?)? dateSelect;
//   const CalendarTabBoking({
//     super.key,
//     this.dateSelect,
//   });

//   @override
//   State<CalendarTabBoking> createState() => _CalendarTabBokingState();
// }

// class _CalendarTabBokingState extends State<CalendarTabBoking> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<BookingProvider>(builder: (context, provider, _) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 2),
//                 child: TableCalendar(
//                   pageJumpingEnabled: false,
//                   calendarFormat: provider.format,
//                   headerStyle: HeaderStyle(
//                     formatButtonVisible: false,
//                     formatButtonShowsNext: false,
//                     titleCentered: false,
//                     titleTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     leftChevronVisible: false,
//                     rightChevronVisible: false,
//                     headerMargin: const EdgeInsets.only(bottom: 16.0),
//                     headerPadding: const EdgeInsets.only(bottom: 8.0),
//                   ),
//                   currentDay: DateTime.now(),
//                   firstDay: DateTime.now().subtract(
//                     const Duration(days: 1460),
//                   ),
//                   lastDay: DateTime.now().add(
//                     const Duration(days: 1460),
//                   ),
//                   focusedDay: provider.focusedDate,
//                   selectedDayPredicate: (date) =>
//                       isSameDay(provider.selectedDate, date),
//                   startingDayOfWeek: StartingDayOfWeek.monday,
//                   daysOfWeekStyle: DaysOfWeekStyle(
//                     weekdayStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                   onDaySelected: (selectedDay, focusedDay) {
//                     // Implement your onDaySelected logic here
//                     provider.isSelectedDateOk(selectedDay, focusedDay);
//                     if (!provider.isSelected) {
//                       toastMessage(
//                           context: context,
//                           message: 'Please select a valid date',
//                           position: DelightSnackbarPosition.top,
//                           messageColor: Colors.red,
//                           leadingIcon: const Icon(
//                             Icons.cancel,
//                             color: Colors.red,
//                           ));
//                     }
//                   },
//                   calendarStyle: CalendarStyle(
//                     defaultTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     outsideTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     weekendTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     todayTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     todayDecoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: blueColor,
//                         width: 1.0,
//                       ),
//                     ),
//                     selectedTextStyle: GoogleFonts.dmSans(
//                       textStyle: const TextStyle(
//                         color: Colors.black,
//                         letterSpacing: 0.50,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     isTodayHighlighted: true,
//                     selectedDecoration: BoxDecoration(
//                       color: Colors.blue.shade100,
//                       shape: BoxShape.circle,
//                     ),
//                     outsideDaysVisible: false,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 right: 12,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     GestureDetector(
//                       onTap: provider.setCalenderFormate,
//                       child: const Icon(
//                         Icons.calendar_month_rounded,
//                         size: 32,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//     });
//   }
// }
