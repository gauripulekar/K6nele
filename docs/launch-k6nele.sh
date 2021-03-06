
# Example of launching Kõnele using 'adb shell am'

adb shell am force-stop ee.ioc.phon.android.speak;

adb shell am start \
-n ee.ioc.phon.android.speak/.RecognizerIntentActivity \
-a android.speech.action.RECOGNIZE_SPEECH \
-e android.speech.extra.LANGUAGE_MODEL "free_form" \
-e android.speech.extra.LANGUAGE "en-US" \
-e ee.ioc.phon.android.extra.GRAMMAR_URL "http://kaljurand.github.com/Grammars/grammars/pgf/Action.pgf" \
-e ee.ioc.phon.android.extra.GRAMMAR_TARGET_LANG "App" \
-e android.speech.extra.PROMPT "Please say: one plus two!" \
-e ee.ioc.phon.android.extra.PHRASE "one plus two"
