.class public abstract Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;
.super Ljava/lang/Object;
.source "BiometricAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 236
    return-void
.end method

.method public greylist-max-o onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 216
    return-void
.end method

.method public greylist-max-o onAuthenticationFailed()V
    .locals 0

    .line 230
    return-void
.end method

.method public greylist-max-o onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 225
    return-void
.end method
