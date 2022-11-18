.class Landroid/os/CombinedVibration$Stereo$1;
.super Ljava/lang/Object;
.source "CombinedVibration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration$Stereo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CombinedVibration$Stereo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration$Stereo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 528
    new-instance v0, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p1}, Landroid/os/CombinedVibration$Stereo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$Stereo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CombinedVibration$Stereo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/CombinedVibration$Stereo;
    .locals 1
    .param p1, "size"    # I

    .line 534
    new-array v0, p1, [Landroid/os/CombinedVibration$Stereo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/CombinedVibration$Stereo$1;->newArray(I)[Landroid/os/CombinedVibration$Stereo;

    move-result-object p1

    return-object p1
.end method
