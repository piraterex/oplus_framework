.class final Landroid/app/Instrumentation$InstrumentationThread;
.super Ljava/lang/Thread;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstrumentationThread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Instrumentation;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .line 2335
    iput-object p1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    .line 2336
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2337
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 2340
    const/4 v0, -0x8

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    goto :goto_0

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting priority of instrumentation thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2343
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2342
    const-string v2, "Instrumentation"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2345
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v0, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-static {v0}, Landroid/app/Instrumentation;->-$$Nest$fgetmAutomaticPerformanceSnapshots(Landroid/app/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    .line 2348
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    .line 2349
    return-void
.end method
