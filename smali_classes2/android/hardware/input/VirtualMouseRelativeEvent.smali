.class public final Landroid/hardware/input/VirtualMouseRelativeEvent;
.super Ljava/lang/Object;
.source "VirtualMouseRelativeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualMouseRelativeEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualMouseRelativeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRelativeX:F

.field private final blacklist mRelativeY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Landroid/hardware/input/VirtualMouseRelativeEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualMouseRelativeEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(FF)V
    .locals 0
    .param p1, "relativeX"    # F
    .param p2, "relativeY"    # F

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    .line 39
    iput p2, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(FFLandroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(FF)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseRelativeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualMouseRelativeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRelativeX()F
    .locals 1

    .line 62
    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    return v0
.end method

.method public whitelist getRelativeY()F
    .locals 1

    .line 69
    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 49
    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget v0, p0, Landroid/hardware/input/VirtualMouseRelativeEvent;->mRelativeY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 51
    return-void
.end method
