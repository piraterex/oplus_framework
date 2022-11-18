.class public Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager$RecentTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTaskSnapshotData"
.end annotation


# instance fields
.field public blacklist bufferSize:Landroid/graphics/Point;

.field public blacklist contentInsets:Landroid/graphics/Rect;

.field public blacklist taskSize:Landroid/graphics/Point;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V
    .locals 1
    .param p1, "other"    # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 2066
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2067
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2068
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2069
    return-void
.end method

.method public blacklist set(Landroid/window/TaskSnapshot;)V
    .locals 4
    .param p1, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 2076
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2077
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2078
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2079
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2080
    return-void

    .line 2082
    :cond_0
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2083
    .local v1, "buffer":Landroid/hardware/HardwareBuffer;
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2084
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2085
    if-eqz v1, :cond_1

    .line 2086
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 2087
    :cond_1
    nop

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2088
    return-void
.end method
