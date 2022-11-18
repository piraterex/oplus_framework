.class Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 474
    .local v0, "volumeGroupId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, "streamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 476
    .local v2, "nbAttributes":I
    new-array v3, v2, [Landroid/media/AudioAttributes;

    .line 477
    .local v3, "aa":[Landroid/media/AudioAttributes;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 478
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioAttributes;

    aput-object v5, v3, v4

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    .end local v4    # "index":I
    :cond_0
    new-instance v4, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    invoke-direct {v4, v0, v1, v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;-><init>(II[Landroid/media/AudioAttributes;)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    .locals 1
    .param p1, "size"    # I

    .line 485
    new-array v0, p1, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup$1;->newArray(I)[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    move-result-object p1

    return-object p1
.end method
