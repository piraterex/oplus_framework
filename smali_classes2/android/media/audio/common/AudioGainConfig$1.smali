.class Landroid/media/audio/common/AudioGainConfig$1;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioGainConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/AudioGainConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioGainConfig;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/media/audio/common/AudioGainConfig;

    invoke-direct {v0}, Landroid/media/audio/common/AudioGainConfig;-><init>()V

    .line 19
    .local v0, "_aidl_out":Landroid/media/audio/common/AudioGainConfig;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/AudioGainConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioGainConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/AudioGainConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audio/common/AudioGainConfig;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 24
    new-array v0, p1, [Landroid/media/audio/common/AudioGainConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioGainConfig$1;->newArray(I)[Landroid/media/audio/common/AudioGainConfig;

    move-result-object p1

    return-object p1
.end method
