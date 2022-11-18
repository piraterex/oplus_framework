.class Landroid/app/ActivityThread$3;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 8037
    iput-object p1, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 8039
    iget-object v0, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v0, :cond_0

    .line 8040
    return-void

    .line 8042
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 8043
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    .line 8044
    .local v1, "dalvikMax":J
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 8045
    .local v3, "dalvikUsed":J
    const-wide/16 v5, 0x3

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x4

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 8046
    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dalvik max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v8, v1, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " total="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8047
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " used="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8046
    const-string v6, "ActivityThread"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8049
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 8051
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread$3;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v5, v6}, Landroid/app/IActivityTaskManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8054
    goto :goto_0

    .line 8052
    :catch_0
    move-exception v5

    .line 8053
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 8056
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
