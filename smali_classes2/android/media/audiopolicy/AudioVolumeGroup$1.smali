.class Landroid/media/audiopolicy/AudioVolumeGroup$1;
.super Ljava/lang/Object;
.source "AudioVolumeGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioVolumeGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioVolumeGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    const-string v0, "in Parcel must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "nbAttributes":I
    new-array v3, v2, [Landroid/media/AudioAttributes;

    .line 176
    .local v3, "audioAttributes":[Landroid/media/AudioAttributes;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 177
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioAttributes;

    aput-object v5, v3, v4

    .line 176
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    .end local v4    # "index":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 180
    .local v4, "nbStreamTypes":I
    new-array v5, v4, [I

    .line 181
    .local v5, "streamTypes":[I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v4, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    aput v7, v5, v6

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 184
    .end local v6    # "index":I
    :cond_1
    new-instance v6, Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-direct {v6, v0, v1, v3, v5}, Landroid/media/audiopolicy/AudioVolumeGroup;-><init>(Ljava/lang/String;I[Landroid/media/AudioAttributes;[I)V

    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioVolumeGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 1
    .param p1, "size"    # I

    .line 189
    new-array v0, p1, [Landroid/media/audiopolicy/AudioVolumeGroup;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioVolumeGroup$1;->newArray(I)[Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object p1

    return-object p1
.end method
