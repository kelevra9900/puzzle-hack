// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "are_you_sure": MessageLookupByLibrary.simpleMessage("¿Estás seguro?"),
        "back_to_game":
            MessageLookupByLibrary.simpleMessage("Regresar al juego"),
        "completed": MessageLookupByLibrary.simpleMessage(
            "Has completado el rompecabezas"),
        "dou_you_really": MessageLookupByLibrary.simpleMessage(
            "Realmente quieres reiniciar el rompecabezas actual"),
        "great_job": MessageLookupByLibrary.simpleMessage("¡GRAN TRABAJO!"),
        "movements": MessageLookupByLibrary.simpleMessage("movimientos"),
        "no": MessageLookupByLibrary.simpleMessage("NO"),
        "ok": MessageLookupByLibrary.simpleMessage("ACEPTAR"),
        "privacy": MessageLookupByLibrary.simpleMessage(
            "Este es un juego gratuito sin fines de lucro, el juego no recolecta información de ningun tipo de los usuarios ni tampoco de su trafico, no necesita internet."),
        "restart": MessageLookupByLibrary.simpleMessage("Reiniciar"),
        "start": MessageLookupByLibrary.simpleMessage("INICIAR"),
        "time": MessageLookupByLibrary.simpleMessage("Tiempo"),
        "yes": MessageLookupByLibrary.simpleMessage("SI")
      };
}
