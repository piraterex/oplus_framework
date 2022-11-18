.class Landroid/media/audio/common/ExtraAudioDescriptor$1;
.super Ljava/lang/Object;
.source "ExtraAudioDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/ExtraAudioDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audio/common/ExtraAudioDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 16
    new-instance v0, Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {v0}, Landroid/media/audio/common/ExtraAudioDescriptor;-><init>()V

    .line 17
    .local v0, "_aidl_out":Landroid/media/audio/common/ExtraAudioDescriptor;
    invoke-virtual {v0, p1}, Landroid/media/audio/common/ExtraAudioDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 18
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/media/audio/common/ExtraAudioDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 22
    new-array v0, p1, [Landroid/media/audio/common/ExtraAudioDescriptor;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/media/audio/common/ExtraAudioDescriptor$1;->newArray(I)[Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object p1

    return-object p1
.end method
