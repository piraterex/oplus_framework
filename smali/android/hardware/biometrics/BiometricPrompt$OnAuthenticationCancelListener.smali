.class Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt;J)V
    .locals 0
    .param p2, "id"    # J

    .line 469
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-wide p2, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    .line 471
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 3

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel BP authentication requested for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPrompt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    iget-wide v1, p0, Landroid/hardware/biometrics/BiometricPrompt$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$mcancelAuthentication(Landroid/hardware/biometrics/BiometricPrompt;J)V

    .line 477
    return-void
.end method
