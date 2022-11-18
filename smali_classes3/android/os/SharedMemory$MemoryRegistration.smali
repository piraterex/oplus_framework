.class final Landroid/os/SharedMemory$MemoryRegistration;
.super Ljava/lang/Object;
.source "SharedMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryRegistration"
.end annotation


# instance fields
.field private greylist-max-o mReferenceCount:I

.field private greylist-max-o mSize:I


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput p1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    .line 383
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 384
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 385
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/SharedMemory$MemoryRegistration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o acquire()Landroid/os/SharedMemory$MemoryRegistration;
    .locals 1

    monitor-enter p0

    .line 388
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-object p0

    .line 387
    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o release()V
    .locals 2

    monitor-enter p0

    .line 393
    :try_start_0
    iget v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/SharedMemory$MemoryRegistration;->mReferenceCount:I

    .line 394
    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/os/SharedMemory$MemoryRegistration;->mSize:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local p0    # "this":Landroid/os/SharedMemory$MemoryRegistration;
    :cond_0
    monitor-exit p0

    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
