.class Landroid/media/MicrophoneInfoData$1;
.super Ljava/lang/Object;
.source "MicrophoneInfoData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/MicrophoneInfoData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/MicrophoneInfoData;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 27
    new-instance v0, Landroid/media/MicrophoneInfoData;

    invoke-direct {v0}, Landroid/media/MicrophoneInfoData;-><init>()V

    .line 28
    .local v0, "_aidl_out":Landroid/media/MicrophoneInfoData;
    invoke-virtual {v0, p1}, Landroid/media/MicrophoneInfoData;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/media/MicrophoneInfoData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MicrophoneInfoData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/MicrophoneInfoData;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 33
    new-array v0, p1, [Landroid/media/MicrophoneInfoData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/media/MicrophoneInfoData$1;->newArray(I)[Landroid/media/MicrophoneInfoData;

    move-result-object p1

    return-object p1
.end method
