.class public final synthetic Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

.field public final synthetic blacklist f$1:Landroid/telecom/CallAudioState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/CallAudioState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/CallAudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->lambda$updateCallAudioState$0$android-telecom-CallDiagnosticService$CallDiagnosticServiceBinder(Landroid/telecom/CallAudioState;)V

    return-void
.end method
