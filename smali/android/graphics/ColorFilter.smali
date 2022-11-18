.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorFilter$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private greylist-max-o mCleaner:Ljava/lang/Runnable;

.field private greylist-max-o mNativeInstance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/ColorFilter;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native greylist-max-o nativeGetFinalizer()J
.end method


# virtual methods
.method greylist-max-o createNativeInstance()J
    .locals 2

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final declared-synchronized greylist-max-o discardNativeInstance()V
    .locals 4

    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 55
    iput-wide v2, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local p0    # "this":Landroid/graphics/ColorFilter;
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized greylist-max-o getNativeInstance()J
    .locals 4

    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    .line 64
    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Landroid/graphics/ColorFilter$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorFilter;->mCleaner:Ljava/lang/Runnable;

    .line 72
    .end local p0    # "this":Landroid/graphics/ColorFilter;
    :cond_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
