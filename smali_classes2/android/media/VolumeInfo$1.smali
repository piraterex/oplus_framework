.class Landroid/media/VolumeInfo$1;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeInfo;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 373
    new-instance v0, Landroid/media/VolumeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/VolumeInfo;-><init>(Landroid/os/Parcel;Landroid/media/VolumeInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Landroid/media/VolumeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/VolumeInfo;
    .locals 1
    .param p1, "size"    # I

    .line 377
    new-array v0, p1, [Landroid/media/VolumeInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Landroid/media/VolumeInfo$1;->newArray(I)[Landroid/media/VolumeInfo;

    move-result-object p1

    return-object p1
.end method
