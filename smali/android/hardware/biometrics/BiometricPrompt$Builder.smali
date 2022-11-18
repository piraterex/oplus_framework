.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 152
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/biometrics/BiometricPrompt;
    .locals 11

    .line 446
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 447
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 448
    .local v1, "negative":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v2

    .line 449
    .local v2, "useDefaultTitle":Z
    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v3

    .line 450
    .local v3, "deviceCredentialAllowed":Z
    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v4

    .line 451
    .local v4, "authenticators":I
    if-nez v3, :cond_1

    .line 452
    invoke-static {v4}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smisCredentialAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 454
    .local v5, "willShowDeviceCredentialButton":Z
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 455
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Title must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 456
    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 457
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Negative text must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 458
    :cond_5
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    .line 459
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_7
    :goto_4
    new-instance v6, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v7, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v9, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt-IA;)V

    return-object v6
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "allow"    # Z

    .line 382
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    .line 383
    return-object p0
.end method

.method public whitelist setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "authenticators"    # I

    .line 342
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 343
    return-object p0
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/biometrics/BiometricPrompt$Builder;"
        }
    .end annotation

    .line 368
    .local p1, "sensorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowedSensorIds(Ljava/util/List;)V

    .line 369
    return-object p0
.end method

.method public whitelist setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "requireConfirmation"    # Z

    .line 279
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setConfirmationRequested(Z)V

    .line 280
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 197
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    .line 198
    return-object p0
.end method

.method public whitelist setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "allowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    .line 305
    return-object p0
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "checkDevicePolicyManager"    # Z

    .line 395
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    .line 396
    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "ignoreEnrollmentState"    # Z

    .line 420
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIgnoreEnrollmentState(Z)V

    .line 421
    return-object p0
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "sensorId"    # I

    .line 432
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIsForLegacyFingerprintManager(I)V

    .line 433
    return-object p0
.end method

.method public whitelist setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    if-eqz p2, :cond_1

    .line 249
    if-eqz p3, :cond_0

    .line 252
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 254
    return-object p0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "set"    # Z

    .line 407
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setReceiveSystemEvents(Z)V

    .line 408
    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 187
    return-object p0
.end method

.method public blacklist setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "subtitle"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    if-eqz p2, :cond_1

    .line 217
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    if-eqz p3, :cond_2

    .line 220
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialDescription(Ljava/lang/CharSequence;)V

    .line 222
    :cond_2
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 162
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    return-object p0
.end method

.method public blacklist setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    .line 175
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultTitle(Z)V

    .line 176
    return-object p0
.end method
