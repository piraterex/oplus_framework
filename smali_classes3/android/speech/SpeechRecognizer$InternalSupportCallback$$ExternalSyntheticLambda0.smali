.class public final synthetic Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

.field public final synthetic blacklist f$1:Landroid/speech/RecognitionSupport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/SpeechRecognizer$InternalSupportCallback;Landroid/speech/RecognitionSupport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iput-object p2, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iget-object v1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda0;->f$1:Landroid/speech/RecognitionSupport;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->lambda$onSupportResult$0$android-speech-SpeechRecognizer$InternalSupportCallback(Landroid/speech/RecognitionSupport;)V

    return-void
.end method
