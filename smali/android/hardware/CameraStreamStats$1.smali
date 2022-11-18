.class Landroid/hardware/CameraStreamStats$1;
.super Ljava/lang/Object;
.source "CameraStreamStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraStreamStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/CameraStreamStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraStreamStats;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 98
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/hardware/CameraStreamStats;

    invoke-direct {v1, p1, v0}, Landroid/hardware/CameraStreamStats;-><init>(Landroid/os/Parcel;Landroid/hardware/CameraStreamStats-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 99
    .local v0, "streamStats":Landroid/hardware/CameraStreamStats;
    return-object v0

    .line 100
    .end local v0    # "streamStats":Landroid/hardware/CameraStreamStats;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraStreamStats"

    const-string v3, "Exception creating CameraStreamStats from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/CameraStreamStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/CameraStreamStats;
    .locals 1
    .param p1, "size"    # I

    .line 108
    new-array v0, p1, [Landroid/hardware/CameraStreamStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats$1;->newArray(I)[Landroid/hardware/CameraStreamStats;

    move-result-object p1

    return-object p1
.end method
