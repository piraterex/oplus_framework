.class public Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
.super Ljava/lang/Object;
.source "KernelCpuProcStringReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuProcStringReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcFileIterator"
.end annotation


# instance fields
.field private blacklist mPos:I

.field private final blacklist mSize:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/KernelCpuProcStringReader;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "size"    # I

    .line 205
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p2, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mSize:I

    .line 207
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-static {v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->-$$Nest$fgetmReadLock(Lcom/android/internal/os/KernelCpuProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 243
    return-void
.end method

.method public blacklist hasNextLine()Z
    .locals 2

    .line 211
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextLine()Ljava/nio/CharBuffer;
    .locals 4

    .line 222
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mSize:I

    if-lt v0, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mPos:I

    .line 227
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-static {v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->-$$Nest$fgetmBuf(Lcom/android/internal/os/KernelCpuProcStringReader;)[C

    move-result-object v1

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mPos:I

    .line 231
    .local v1, "start":I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mPos:I

    .line 232
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-static {v2}, Lcom/android/internal/os/KernelCpuProcStringReader;->-$$Nest$fgetmBuf(Lcom/android/internal/os/KernelCpuProcStringReader;)[C

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v1, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    return-object v2
.end method

.method public blacklist size()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->mSize:I

    return v0
.end method
