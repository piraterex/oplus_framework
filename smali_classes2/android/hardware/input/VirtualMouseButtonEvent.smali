.class public final Landroid/hardware/input/VirtualMouseButtonEvent;
.super Ljava/lang/Object;
.source "VirtualMouseButtonEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseButtonEvent$Builder;,
        Landroid/hardware/input/VirtualMouseButtonEvent$Button;,
        Landroid/hardware/input/VirtualMouseButtonEvent$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final blacklist ACTION_UNKNOWN:I = -0x1

.field public static final whitelist BUTTON_BACK:I = 0x8

.field public static final whitelist BUTTON_FORWARD:I = 0x10

.field public static final whitelist BUTTON_PRIMARY:I = 0x1

.field public static final whitelist BUTTON_SECONDARY:I = 0x2

.field public static final whitelist BUTTON_TERTIARY:I = 0x4

.field public static final blacklist BUTTON_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseButtonEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mButtonCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseButtonEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "buttonCode"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    .line 87
    iput p2, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/hardware/input/VirtualMouseButtonEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseButtonEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    .line 117
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    return v0
.end method

.method public whitelist getButtonCode()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 97
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent;->mButtonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
