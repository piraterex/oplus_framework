.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/biometrics/BiometricPrompt;

    .line 491
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAcquired$3$android-hardware-biometrics-BiometricPrompt$1(ILjava/lang/String;)V
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 560
    return-void
.end method

.method synthetic blacklist lambda$onAuthenticationFailed$1$android-hardware-biometrics-BiometricPrompt$1()V
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 506
    return-void
.end method

.method synthetic blacklist lambda$onAuthenticationSucceeded$0$android-hardware-biometrics-BiometricPrompt$1(I)V
    .locals 2
    .param p1, "authenticationType"    # I

    .line 496
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmCryptoObject(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;I)V

    .line 498
    .local v0, "result":Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 499
    return-void
.end method

.method synthetic blacklist lambda$onDialogDismissed$4$android-hardware-biometrics-BiometricPrompt$1()V
    .locals 3

    .line 568
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 569
    return-void
.end method

.method synthetic blacklist lambda$onError$2$android-hardware-biometrics-BiometricPrompt$1(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "stringToSend"    # Ljava/lang/String;

    .line 552
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 553
    return-void
.end method

.method synthetic blacklist lambda$onSystemEvent$5$android-hardware-biometrics-BiometricPrompt$1(I)V
    .locals 1
    .param p1, "event"    # I

    .line 578
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmAuthenticationCallback(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    .line 579
    return-void
.end method

.method public blacklist onAcquired(ILjava/lang/String;)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 2

    .line 504
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(I)V
    .locals 2
    .param p1, "authenticationType"    # I

    .line 495
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public blacklist onDialogDismissed(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 566
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmNegativeButtonInfo(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :goto_0
    return-void
.end method

.method public blacklist onError(III)V
    .locals 4
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 516
    :sswitch_0
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 517
    goto :goto_0

    .line 520
    :sswitch_1
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    if-nez v0, :cond_0

    .line 527
    sparse-switch p2, :sswitch_data_1

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error, modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 538
    :sswitch_2
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    goto :goto_1

    .line 535
    :sswitch_3
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    goto :goto_1

    .line 532
    :sswitch_4
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    goto :goto_1

    .line 529
    :sswitch_5
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmContext(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    :cond_0
    :goto_1
    move-object v1, v0

    .line 551
    .local v1, "stringToSend":Ljava/lang/String;
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 554
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method public blacklist onSystemEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .line 577
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$fgetmExecutor(Landroid/hardware/biometrics/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method
