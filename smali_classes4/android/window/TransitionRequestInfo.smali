.class public final Landroid/window/TransitionRequestInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionRequestInfo$DisplayChange;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 421
    new-instance v0, Landroid/window/TransitionRequestInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p4, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 288
    const-class v0, Landroid/view/WindowManager$TransitionType;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 290
    iput-object p2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 291
    iput-object p3, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 292
    iput-object p4, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 295
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 405
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .local v1, "type":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 407
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/RemoteTransition;

    .line 408
    .local v4, "remoteTransition":Landroid/window/RemoteTransition;
    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    sget-object v5, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 410
    .local v5, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    :goto_2
    iput v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 411
    const-class v6, Landroid/view/WindowManager$TransitionType;

    invoke-static {v6, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 413
    iput-object v2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 414
    iput-object v4, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 415
    iput-object v5, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 418
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 302
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    return v0
.end method

.method public blacklist setDisplayChange(Landroid/window/TransitionRequestInfo$DisplayChange;)Landroid/window/TransitionRequestInfo;
    .locals 0
    .param p1, "value"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 358
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 359
    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/window/TransitionRequestInfo;
    .locals 0
    .param p1, "value"    # Landroid/window/RemoteTransition;

    .line 347
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 348
    return-object p0
.end method

.method public blacklist setTriggerTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .locals 0
    .param p1, "value"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 338
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 339
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRequestInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "flg":B
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 384
    :cond_0
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 385
    :cond_1
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 386
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 387
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 389
    :cond_3
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 390
    :cond_4
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 391
    :cond_5
    return-void
.end method
