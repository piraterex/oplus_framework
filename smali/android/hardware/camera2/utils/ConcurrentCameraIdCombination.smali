.class public Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
.super Ljava/lang/Object;
.source "ConcurrentCameraIdCombination.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConcurrentCameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination$1;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConcurrentCameraIdCombination()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "cameraCombinationSize":I
    if-ltz v0, :cond_2

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "cameraId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 81
    iget-object v3, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "cameraId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .restart local v2    # "cameraId":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to read camera id from Parcel"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v1    # "i":I
    .end local v2    # "cameraId":Ljava/lang/String;
    :cond_1
    return-void

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraCombinationSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should not be negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;->mConcurrentCameraIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "cameraId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    .end local v1    # "cameraId":Ljava/lang/String;
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
