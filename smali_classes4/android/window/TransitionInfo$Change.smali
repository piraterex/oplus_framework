.class public final Landroid/window/TransitionInfo$Change;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowEnterPip:Z

.field private blacklist mBackgroundColor:I

.field private final blacklist mContainer:Landroid/window/WindowContainerToken;

.field private final blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndFixedRotation:I

.field private final blacklist mEndRelOffset:Landroid/graphics/Point;

.field private blacklist mEndRotation:I

.field private blacklist mFlags:I

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mMode:I

.field private blacklist mParent:Landroid/window/WindowContainerToken;

.field private blacklist mRotationAnimation:I

.field private final blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartRotation:I

.field private blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 582
    new-instance v0, Landroid/window/TransitionInfo$Change$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Change$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 361
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 363
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 365
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 367
    const/4 v3, -0x1

    iput v3, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 368
    iput v3, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 373
    iput v3, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 374
    iput v3, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 383
    sget-object v3, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 384
    sget-object v3, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerToken;

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 385
    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 386
    invoke-virtual {v3, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 389
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 390
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 391
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 392
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 399
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo$Change-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 361
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 362
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 368
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 373
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 374
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 378
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 379
    iput-object p2, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 380
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowEnterPip()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return v0
.end method

.method public blacklist getBackgroundColor()I
    .locals 1

    .line 558
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return v0
.end method

.method public blacklist getContainer()Landroid/window/WindowContainerToken;
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 508
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getEndFixedRotation()I
    .locals 1

    .line 547
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return v0
.end method

.method public blacklist getEndRelOffset()Landroid/graphics/Point;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getEndRotation()I
    .locals 1

    .line 542
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return v0
.end method

.method public blacklist getFlags()I
    .locals 1

    .line 490
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 485
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return v0
.end method

.method public blacklist getParent()Landroid/window/WindowContainerToken;
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getRotationAnimation()I
    .locals 1

    .line 552
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return v0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .locals 1

    .line 499
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getStartRotation()I
    .locals 1

    .line 537
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    return v0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist setAllowEnterPip(Z)V
    .locals 0
    .param p1, "allowEnterPip"    # Z

    .line 441
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 442
    return-void
.end method

.method public blacklist setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .line 465
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 466
    return-void
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 423
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 424
    return-void
.end method

.method public blacklist setEndFixedRotation(I)V
    .locals 0
    .param p1, "endFixedRotation"    # I

    .line 452
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 453
    return-void
.end method

.method public blacklist setEndRelOffset(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 428
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 429
    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 413
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 414
    return-void
.end method

.method public blacklist setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 408
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 409
    return-void
.end method

.method public blacklist setParent(Landroid/window/WindowContainerToken;)V
    .locals 0
    .param p1, "parent"    # Landroid/window/WindowContainerToken;

    .line 403
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 404
    return-void
.end method

.method public blacklist setRotation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 446
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 447
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 448
    return-void
.end method

.method public blacklist setRotationAnimation(I)V
    .locals 0
    .param p1, "anim"    # I

    .line 460
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 461
    return-void
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 418
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 419
    return-void
.end method

.method public blacklist setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 436
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 437
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 604
    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endFixedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 564
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 565
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 566
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 567
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 571
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 573
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 574
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    return-void
.end method
