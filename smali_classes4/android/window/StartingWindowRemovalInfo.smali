.class public final Landroid/window/StartingWindowRemovalInfo;
.super Ljava/lang/Object;
.source "StartingWindowRemovalInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/StartingWindowRemovalInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deferRemoveForIme:Z

.field public blacklist mainFrame:Landroid/graphics/Rect;

.field public blacklist playRevealAnimation:Z

.field public blacklist taskId:I

.field public blacklist windowAnimationLeash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/window/StartingWindowRemovalInfo$1;

    invoke-direct {v0}, Landroid/window/StartingWindowRemovalInfo$1;-><init>()V

    sput-object v0, Landroid/window/StartingWindowRemovalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Landroid/window/StartingWindowRemovalInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/StartingWindowRemovalInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/StartingWindowRemovalInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    .line 79
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    .line 80
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForIme:Z

    .line 83
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartingWindowRemovalInfo{taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " playRevealAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deferRemoveForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget v0, p0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    iget-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    iget-boolean v0, p0, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForIme:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    return-void
.end method
