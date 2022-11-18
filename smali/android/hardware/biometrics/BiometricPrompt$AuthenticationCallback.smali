.class public abstract Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 836
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 874
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 845
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 867
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 855
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 861
    return-void
.end method

.method public blacklist onSystemEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .line 880
    return-void
.end method
