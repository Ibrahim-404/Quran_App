import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'se7a_counter_state.dart';

class Se7aCounterCubit extends Cubit<Se7aCounterState> {
  Se7aCounterCubit() : super(Se7aCounterInitial(counter:0));

  List<String> islamicMessages = [
    "ما شاء الله! لقد أضأت قلبك بذكر الله، فهنيئًا لك الأجر العظيم.",
    "سبحان الله وبحمده، كلما أكثرت من الذكر زادت حسناتك. بارك الله فيك.",
    "هنيئًا لك! التسبيح زادك قربًا من الرحمن.",
    "بوركت خطواتك في طريق الطاعة. استمر واغتنم هذا النور.",
    "يا لها من لحظة مباركة! جعلك الله من الذاكرين الشاكرين.",
    "الله أكبر! زادك الله قربًا ونورًا بذكره.",
    "ما أروعك وأنت تُحيي قلبك بتسبيح الله، استمرّ واطمئن.",
    "سبحان الله! هنيئًا لمن جعل لسانه رطبًا بذكر الله.",
    "بذكر الله تطمئن القلوب، وقد طاب قلبك بالتسبيح. أحسنت!",
    "يا عابد الله، رفعت قدرك بهذا التسبيح، زادك الله رفعةً.",
    "نور على نور! ما أجمل التسبيح في ميزان حسناتك.",
    "هنيئًا لك ختم 100 تسبيحة، تقبّل الله منك ورفع درجاتك.",
    "زادك الله من فضله وبركته، استمر ولا تحرم نفسك الخير.",
    "غرسٌ جديد في جنتك، هنيئًا لك بكل تسبيحة.",
    "ذكر الله هو راحة الأرواح، وقد استحققت اليوم السكينة."
  ];

  List<String> tasbeehWords = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله",
    "سبحان الله وبحمده",
    "سبحان الله العظيم",
    "أستغفر الله",
    "اللهم صلِّ على محمد",
    "لا إله إلا أنت سبحانك إني كنت من الظالمين",
    "اللهم اغفر لي",
    "اللهم ارحمني",
    "يا حي يا قيوم برحمتك أستغيث",
    "اللهم ارزقني الجنة",
    "اللهم اعني على ذكرك وشكرك وحسن عبادتك"
  ];

  String lastTasbeeh = "سبحان الله"; // Store the last tasbeeh
int counter = 0;
  void increment() {
    counter++;
    emit(Se7aCounterIncreasing(counter: counter, lastTasbeeh: lastTasbeeh)); // Pass lastTasbeeh to the state
    print(counter);
    try {
      if (counter == 100) {
        counter = 0;

        // Safely access random elements
        String message = islamicMessages.isNotEmpty
            ? islamicMessages[Random().nextInt(islamicMessages.length)]
            : "تسبيحك مقبول إن شاء الله!";

        lastTasbeeh = tasbeehWords.isNotEmpty
            ? tasbeehWords[Random().nextInt(tasbeehWords.length)]
            : "سبحان الله";

        emit(
          Se7aCounterComplete100Times(
            message: message,
            tesbeh: lastTasbeeh, // Use the new tasbeeh
          ),
        );
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}