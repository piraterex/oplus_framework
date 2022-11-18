.class public Landroid/window/BackEvent;
.super Ljava/lang/Object;
.source "BackEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackEvent$SwipeEdge;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EDGE_LEFT:I = 0x0

.field public static final blacklist EDGE_RIGHT:I = 0x1


# instance fields
.field private final blacklist mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private final blacklist mProgress:F

.field private final blacklist mSwipeEdge:I

.field private final blacklist mTouchX:F

.field private final blacklist mTouchY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroid/window/BackEvent$1;

    invoke-direct {v0}, Landroid/window/BackEvent$1;-><init>()V

    sput-object v0, Landroid/window/BackEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFILandroid/view/RemoteAnimationTarget;)V
    .locals 0
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F
    .param p3, "progress"    # F
    .param p4, "swipeEdge"    # I
    .param p5, "departingAnimationTarget"    # Landroid/view/RemoteAnimationTarget;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/window/BackEvent;->mTouchX:F

    .line 71
    iput p2, p0, Landroid/window/BackEvent;->mTouchY:F

    .line 72
    iput p3, p0, Landroid/window/BackEvent;->mProgress:F

    .line 73
    iput p4, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    .line 74
    iput-object p5, p0, Landroid/window/BackEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 75
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackEvent;->mTouchX:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackEvent;->mTouchY:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/BackEvent;->mProgress:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    .line 82
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/window/BackEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public blacklist getProgress()F
    .locals 1

    .line 115
    iget v0, p0, Landroid/window/BackEvent;->mProgress:F

    return v0
.end method

.method public blacklist getSwipeEdge()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    return v0
.end method

.method public blacklist getTouchX()F
    .locals 1

    .line 122
    iget v0, p0, Landroid/window/BackEvent;->mTouchX:F

    return v0
.end method

.method public blacklist getTouchY()F
    .locals 1

    .line 129
    iget v0, p0, Landroid/window/BackEvent;->mTouchY:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackEvent{mTouchX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTouchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mTouchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSwipeEdge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDepartingAnimationTarget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 104
    iget v0, p0, Landroid/window/BackEvent;->mTouchX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 105
    iget v0, p0, Landroid/window/BackEvent;->mTouchY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 106
    iget v0, p0, Landroid/window/BackEvent;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 107
    iget v0, p0, Landroid/window/BackEvent;->mSwipeEdge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/window/BackEvent;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    return-void
.end method
