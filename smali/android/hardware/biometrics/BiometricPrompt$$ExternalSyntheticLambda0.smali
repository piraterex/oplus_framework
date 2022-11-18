.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/biometrics/BiometricPrompt;

.field public final synthetic blacklist f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt;->lambda$authenticateInternal$0$android-hardware-biometrics-BiometricPrompt(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method
