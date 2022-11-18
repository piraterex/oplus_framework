.class Landroid/security/ConfirmationPrompt$1;
.super Landroid/security/apc/IConfirmationCallback$Stub;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/ConfirmationPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/ConfirmationPrompt;


# direct methods
.method constructor blacklist <init>(Landroid/security/ConfirmationPrompt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/security/ConfirmationPrompt;

    .line 132
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-direct {p0}, Landroid/security/apc/IConfirmationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCompleted(I[B)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "dataThatWasConfirmed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->-$$Nest$fgetmCallback(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->-$$Nest$fgetmCallback(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;

    move-result-object v0

    .line 138
    .local v0, "callback":Landroid/security/ConfirmationCallback;
    iget-object v1, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-static {v1}, Landroid/security/ConfirmationPrompt;->-$$Nest$fgetmExecutor(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 139
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/security/ConfirmationPrompt;->-$$Nest$fputmCallback(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)V

    .line 140
    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-static {v2, v3}, Landroid/security/ConfirmationPrompt;->-$$Nest$fputmExecutor(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)V

    .line 141
    if-nez v1, :cond_0

    .line 142
    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    invoke-static {v2, p1, p2, v0}, Landroid/security/ConfirmationPrompt;->-$$Nest$mdoCallback(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v2, Landroid/security/ConfirmationPrompt$1$1;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/security/ConfirmationPrompt$1$1;-><init>(Landroid/security/ConfirmationPrompt$1;I[BLandroid/security/ConfirmationCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .end local v0    # "callback":Landroid/security/ConfirmationCallback;
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    :cond_1
    :goto_0
    return-void
.end method
