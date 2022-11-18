.class public Landroid/app/ActivityTaskManager$RootTaskInfo;
.super Landroid/app/TaskInfo;
.source "ActivityTaskManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootTaskInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bounds:Landroid/graphics/Rect;

.field public blacklist childTaskBounds:[Landroid/graphics/Rect;

.field public blacklist childTaskIds:[I

.field public blacklist childTaskNames:[Ljava/lang/String;

.field public blacklist childTaskUserIds:[I

.field public blacklist position:I

.field public blacklist visible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 527
    new-instance v0, Landroid/app/ActivityTaskManager$RootTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 539
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 489
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 540
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 542
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 489
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 543
    invoke-virtual {p0, p1}, Landroid/app/ActivityTaskManager$RootTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 544
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityTaskManager$RootTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 517
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 520
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    .line 524
    invoke-super {p0, p1}, Landroid/app/TaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 525
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RootTask id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, " bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v2, " displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->displayId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->userId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v4, " configuration="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 559
    const-string v5, "  taskId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "null"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v5, " visible="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 571
    iget-object v5, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    .line 572
    const-string v5, " topActivity="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 576
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 505
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 506
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 507
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 509
    iget-object v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 510
    iget-boolean v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    invoke-super {p0, p1, p2}, Landroid/app/TaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 513
    return-void
.end method
