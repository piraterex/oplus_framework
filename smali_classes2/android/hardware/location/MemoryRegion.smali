.class public Landroid/hardware/location/MemoryRegion;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/MemoryRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIsExecutable:Z

.field private greylist-max-o mIsReadable:Z

.field private greylist-max-o mIsWritable:Z

.field private greylist-max-o mSizeBytes:I

.field private greylist-max-o mSizeBytesFree:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Landroid/hardware/location/MemoryRegion$1;

    invoke-direct {v0}, Landroid/hardware/location/MemoryRegion$1;-><init>()V

    sput-object v0, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 114
    return v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/MemoryRegion;

    if-eqz v2, :cond_2

    .line 119
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/MemoryRegion;

    .line 120
    .local v2, "other":Landroid/hardware/location/MemoryRegion;
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    if-ne v3, v4, :cond_1

    .line 121
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->getFreeCapacityBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    if-ne v3, v4, :cond_1

    .line 122
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    if-ne v3, v4, :cond_1

    .line 123
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    if-ne v3, v4, :cond_1

    .line 124
    invoke-virtual {v2}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 127
    .end local v2    # "other":Landroid/hardware/location/MemoryRegion;
    :cond_2
    return v1
.end method

.method public whitelist getCapacityBytes()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    return v0
.end method

.method public whitelist getFreeCapacityBytes()I
    .locals 1

    .line 52
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    return v0
.end method

.method public whitelist isExecutable()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    return v0
.end method

.method public whitelist isReadable()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    return v0
.end method

.method public whitelist isWritable()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 86
    const-string v0, ""

    .line 88
    .local v0, "mask":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isReadable()Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/location/MemoryRegion;->isExecutable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/hardware/location/MemoryRegion;->mSizeBytesFree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsReadable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsWritable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean v0, p0, Landroid/hardware/location/MemoryRegion;->mIsExecutable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
