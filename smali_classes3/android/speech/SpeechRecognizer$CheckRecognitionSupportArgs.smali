.class Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckRecognitionSupportArgs"
.end annotation


# instance fields
.field final blacklist mCallback:Landroid/speech/RecognitionSupportCallback;

.field final blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mIntent:Landroid/content/Intent;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/speech/RecognitionSupportCallback;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mIntent:Landroid/content/Intent;

    .line 797
    iput-object p2, p0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 798
    iput-object p3, p0, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;->mCallback:Landroid/speech/RecognitionSupportCallback;

    .line 799
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/speech/SpeechRecognizer$CheckRecognitionSupportArgs;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method
