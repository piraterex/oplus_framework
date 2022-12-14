.class public final Landroid/hardware/input/VirtualKeyEvent;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualKeyEvent$Builder;,
        Landroid/hardware/input/VirtualKeyEvent$SupportedKeycode;,
        Landroid/hardware/input/VirtualKeyEvent$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualKeyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mKeyCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Landroid/hardware/input/VirtualKeyEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualKeyEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    .line 182
    iput p2, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    .line 183
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/input/VirtualKeyEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualKeyEvent;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    .line 188
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualKeyEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualKeyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    return v0
.end method

.method public whitelist getKeyCode()I
    .locals 1

    .line 205
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 192
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
