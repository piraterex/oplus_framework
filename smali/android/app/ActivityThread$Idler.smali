.class Landroid/app/ActivityThread$Idler;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .line 2508
    iput-object p1, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method


# virtual methods
.method public final whitelist queueIdle()Z
    .locals 7

    .line 2511
    iget-object v0, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2512
    .local v0, "a":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 2513
    .local v1, "stopProfiling":Z
    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    if-eqz v2, :cond_0

    .line 2515
    const/4 v1, 0x1

    .line 2517
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2518
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2519
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    .line 2522
    .local v3, "ac":Landroid/app/ActivityClient;
    :cond_1
    sget-boolean v5, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting idle of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " finished="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityThread"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_3
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_4

    .line 2527
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/ActivityClient;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 2528
    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2530
    :cond_4
    move-object v5, v0

    .line 2531
    .local v5, "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2532
    iput-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2533
    if-nez v0, :cond_1

    .line 2535
    .end local v3    # "ac":Landroid/app/ActivityClient;
    .end local v5    # "prev":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_5
    if-eqz v1, :cond_6

    .line 2536
    iget-object v3, p0, Landroid/app/ActivityThread$Idler;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v3}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 2538
    :cond_6
    return v2
.end method
