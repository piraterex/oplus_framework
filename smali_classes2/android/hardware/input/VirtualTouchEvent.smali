.class public final Landroid/hardware/input/VirtualTouchEvent;
.super Ljava/lang/Object;
.source "VirtualTouchEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchEvent$Builder;,
        Landroid/hardware/input/VirtualTouchEvent$Action;,
        Landroid/hardware/input/VirtualTouchEvent$ToolType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_PALM:I = 0x5

.field public static final blacklist TOOL_TYPE_UNKNOWN:I


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mMajorAxisSize:F

.field private final blacklist mPointerId:I

.field private final blacklist mPressure:F

.field private final blacklist mToolType:I

.field private final blacklist mX:F

.field private final blacklist mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 290
    new-instance v0, Landroid/hardware/input/VirtualTouchEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualTouchEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIFFFF)V
    .locals 0
    .param p1, "pointerId"    # I
    .param p2, "toolType"    # I
    .param p3, "action"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "pressure"    # F
    .param p7, "majorAxisSize"    # F

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    .line 91
    iput p2, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    .line 92
    iput p3, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    .line 93
    iput p4, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    .line 94
    iput p5, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    .line 95
    iput p6, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    .line 96
    iput p7, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIFFFFLandroid/hardware/input/VirtualTouchEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFF)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualTouchEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    return v0
.end method

.method public whitelist getMajorAxisSize()F
    .locals 1

    .line 171
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    return v0
.end method

.method public whitelist getPointerId()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    return v0
.end method

.method public whitelist getPressure()F
    .locals 1

    .line 164
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    return v0
.end method

.method public whitelist getToolType()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    return v0
.end method

.method public whitelist getX()F
    .locals 1

    .line 150
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .locals 1

    .line 157
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 116
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    return-void
.end method
