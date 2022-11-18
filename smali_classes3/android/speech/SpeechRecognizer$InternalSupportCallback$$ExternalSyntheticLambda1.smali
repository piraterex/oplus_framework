.class public final synthetic Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/SpeechRecognizer$InternalSupportCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iput p2, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;->f$0:Landroid/speech/SpeechRecognizer$InternalSupportCallback;

    iget v1, p0, Landroid/speech/SpeechRecognizer$InternalSupportCallback$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalSupportCallback;->lambda$onError$1$android-speech-SpeechRecognizer$InternalSupportCallback(I)V

    return-void
.end method
