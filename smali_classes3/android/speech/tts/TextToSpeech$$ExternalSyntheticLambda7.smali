.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic blacklist f$1:Ljava/util/Locale;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;->f$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final blacklist run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;->f$1:Ljava/util/Locale;

    invoke-virtual {v0, v1, p1}, Landroid/speech/tts/TextToSpeech;->lambda$setLanguage$9$android-speech-tts-TextToSpeech(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
