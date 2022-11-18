.class public Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
.super Ljava/lang/Object;
.source "SystemServerCpuThreadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/SystemServerCpuThreadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServiceCpuThreadTimes"
.end annotation


# instance fields
.field public blacklist binderThreadCpuTimesUs:[J

.field public blacklist threadCpuTimesUs:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
