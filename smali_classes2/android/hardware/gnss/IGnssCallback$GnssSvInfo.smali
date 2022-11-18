.class public Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssSvInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist azimuthDegrees:F

.field public blacklist basebandCN0DbHz:F

.field public blacklist cN0Dbhz:F

.field public blacklist carrierFrequencyHz:J

.field public blacklist constellation:I

.field public blacklist elevationDegrees:F

.field public blacklist svFlag:I

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 508
    new-instance v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 500
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 501
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 502
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 503
    iput v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 504
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 505
    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 540
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 543
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 543
    return-void

    .line 561
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 545
    return-void

    .line 561
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 547
    return-void

    .line 561
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 548
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 549
    return-void

    .line 561
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 551
    return-void

    .line 561
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 553
    return-void

    .line 561
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 555
    return-void

    .line 561
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 557
    return-void

    .line 561
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 560
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 563
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 564
    nop

    .line 565
    return-void

    .line 561
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 542
    :cond_11
    :try_start_9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 560
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12

    .line 561
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_12
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 564
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 523
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->cN0Dbhz:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 527
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->basebandCN0DbHz:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 528
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->elevationDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 529
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->azimuthDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 530
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 531
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSvInfo;->svFlag:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 533
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 534
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 536
    return-void
.end method
