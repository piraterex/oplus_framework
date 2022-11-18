.class Landroid/content/BroadcastReceiver$PendingResult$1;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic blacklist val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/BroadcastReceiver$PendingResult;

    .line 265
    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 267
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing broadcast after work to component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$1;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    .line 270
    return-void
.end method
