.class public final synthetic Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/RecognitionSupportCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/RecognitionSupportCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionSupportCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionSupportCallback;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->lambda$handleCheckRecognitionSupport$0(Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method
