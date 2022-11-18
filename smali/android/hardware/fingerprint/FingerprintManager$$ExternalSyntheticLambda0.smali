.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method


# virtual methods
.method public final blacklist createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->lambda$createTestSession$0$android-hardware-fingerprint-FingerprintManager(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p1

    return-object p1
.end method
