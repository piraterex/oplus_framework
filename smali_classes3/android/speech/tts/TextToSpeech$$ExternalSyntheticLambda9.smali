.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/tts/TextToSpeech;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$0:Landroid/speech/tts/TextToSpeech;

    iput-wide p2, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$1:J

    iput p4, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$2:I

    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$0:Landroid/speech/tts/TextToSpeech;

    iget-wide v1, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$1:J

    iget v3, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$2:I

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;->f$3:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->lambda$playSilentUtterance$4$android-speech-tts-TextToSpeech(JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
