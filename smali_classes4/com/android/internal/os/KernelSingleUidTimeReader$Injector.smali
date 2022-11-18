.class public Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelSingleUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist addDeltaForTest(IJJ[[JJ)Z
.end method

.method private static native blacklist addDeltaFromBpf(IJJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addDelta(ILcom/android/internal/os/LongArrayMultiStateCounter;JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "deltaOut"    # Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    .line 279
    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    .line 280
    if-eqz p5, :cond_0

    iget-wide v3, p5, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v5, v3

    .line 279
    move v0, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaFromBpf(IJJJ)Z

    move-result v0

    return v0
.end method

.method public blacklist addDeltaForTest(ILcom/android/internal/os/LongArrayMultiStateCounter;J[[JLcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J
    .param p5, "timeInFreqDataNanos"    # [[J
    .param p6, "deltaOut"    # Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    .line 296
    iget-wide v1, p2, Lcom/android/internal/os/LongArrayMultiStateCounter;->mNativeObject:J

    .line 297
    if-eqz p6, :cond_0

    iget-wide v3, p6, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v6, v3

    .line 296
    move v0, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->addDeltaForTest(IJJ[[JJ)Z

    move-result v0

    return v0
.end method

.method public native blacklist readBpfData(I)[J
.end method

.method public greylist-max-o readData(Ljava/lang/String;)[B
    .locals 1
    .param p1, "procFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    return-object v0
.end method
