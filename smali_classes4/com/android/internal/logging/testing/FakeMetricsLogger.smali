.class public Lcom/android/internal/logging/testing/FakeMetricsLogger;
.super Lcom/android/internal/logging/MetricsLogger;
.source "FakeMetricsLogger.java"


# instance fields
.field private blacklist logs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public blacklist getLogs()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    return-object v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 29
    return-void
.end method

.method protected blacklist saveLog(Landroid/metrics/LogMaker;)V
    .locals 1
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 20
    iget-object v0, p0, Lcom/android/internal/logging/testing/FakeMetricsLogger;->logs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
