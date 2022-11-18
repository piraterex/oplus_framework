.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static greylist-max-o sTemp:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .line 31
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 33
    .local v1, "buf":[C
    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v1, :cond_0

    array-length v0, v1

    if-ge v0, p0, :cond_1

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 40
    :cond_1
    return-object v1

    .line 34
    .end local v1    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .line 45
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    return-void

    .line 47
    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    .line 48
    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
