.class public final synthetic Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iput p2, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/biometrics/BiometricPrompt$1;

    iget v1, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$1$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$1;->lambda$onAcquired$3$android-hardware-biometrics-BiometricPrompt$1(ILjava/lang/String;)V

    return-void
.end method
