.class Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsPrompt"
.end annotation


# static fields
.field private static final blacklist RETRY_MILLIS:I = 0x3e8


# instance fields
.field private blacklist mDismiss:Z

.field private blacklist mLanguageReady:Z

.field private blacklist mRetryCount:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTts:Landroid/speech/tts/TextToSpeech;

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method public static synthetic blacklist $r8$lambda$nTJXhJ166ZZd_5nPL3DkmRf_KpA(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->play()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rSvbPKgeiYtMTwvNC2DcnXNlUvU(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->waitForTtsReady()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Ljava/lang/String;)V
    .locals 3
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 491
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    .line 492
    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const v0, 0x10400f1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    .line 494
    iget-object v0, p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 495
    return-void
.end method

.method private blacklist play()V
    .locals 4

    .line 517
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, "status":I
    if-eqz v0, :cond_1

    .line 522
    const-string v1, "AccessibilityShortcutController"

    const-string v2, "Tts play fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 525
    :cond_1
    return-void
.end method

.method private blacklist waitForTtsReady()V
    .locals 5

    .line 532
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 539
    .local v0, "status":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    .line 542
    .end local v0    # "status":I
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mLanguageReady:Z

    if-eqz v0, :cond_4

    .line 543
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    .line 544
    .local v0, "voice":Landroid/speech/tts/Voice;
    if-eqz v0, :cond_3

    .line 545
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 546
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "notInstalled"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    nop

    .line 548
    .local v1, "voiceDataInstalled":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 549
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return-void

    .line 555
    .end local v0    # "voice":Landroid/speech/tts/Voice;
    .end local v1    # "voiceDataInstalled":Z
    :cond_4
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    if-nez v0, :cond_5

    .line 556
    const-string v0, "AccessibilityShortcutController"

    const-string v1, "Tts not ready to speak."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 558
    return-void

    .line 561
    :cond_5
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mRetryCount:I

    .line 562
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 564
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 3

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mDismiss:Z

    .line 502
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method

.method public whitelist onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .line 507
    if-eqz p1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tts init fail, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityShortcutController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V

    .line 510
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    return-void
.end method
