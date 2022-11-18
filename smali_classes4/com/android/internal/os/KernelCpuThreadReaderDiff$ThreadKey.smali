.class Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReaderDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadKey"
.end annotation


# instance fields
.field private final blacklist mProcessId:I

.field private final blacklist mProcessNameHash:I

.field private final blacklist mThreadId:I

.field private final blacklist mThreadNameHash:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "processId"    # I
    .param p2, "threadId"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "threadName"    # Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    .line 284
    iput p2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    .line 286
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    .line 288
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 297
    instance-of v0, p1, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 298
    return v1

    .line 300
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;

    .line 301
    .local v0, "other":Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;
    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    iget v3, v0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 292
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mProcessNameHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderDiff$ThreadKey;->mThreadNameHash:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
