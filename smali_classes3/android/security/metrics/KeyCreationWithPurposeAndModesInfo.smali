.class public Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
.super Ljava/lang/Object;
.source "KeyCreationWithPurposeAndModesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist algorithm:I

.field public blacklist block_mode_bitmap:I

.field public blacklist digest_bitmap:I

.field public blacklist padding_mode_bitmap:I

.field public blacklist purpose_bitmap:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo$1;

    invoke-direct {v0}, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    .line 13
    iput v0, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    .line 14
    iput v0, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    .line 15
    iput v0, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 60
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 60
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 60
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 60
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 60
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 62
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    nop

    .line 64
    return-void

    .line 60
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 47
    :cond_b
    :try_start_6
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 59
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c

    .line 60
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_c
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v1, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v1, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 38
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void
.end method
