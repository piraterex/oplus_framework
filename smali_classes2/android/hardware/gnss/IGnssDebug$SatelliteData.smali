.class public Landroid/hardware/gnss/IGnssDebug$SatelliteData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatelliteData"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist constellation:I

.field public blacklist ephemerisAgeSeconds:F

.field public blacklist ephemerisHealth:I

.field public blacklist ephemerisSource:I

.field public blacklist ephemerisType:I

.field public blacklist serverPredictionAgeSeconds:F

.field public blacklist serverPredictionIsAvailable:Z

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 352
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    .line 347
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 348
    iput-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 349
    iput v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 384
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 387
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 387
    return-void

    .line 405
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 389
    return-void

    .line 405
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->constellation:I

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 391
    return-void

    .line 405
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisType:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 393
    return-void

    .line 405
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisSource:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    return-void

    .line 405
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisHealth:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 397
    return-void

    .line 405
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 399
    return-void

    .line 405
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 401
    return-void

    .line 405
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 404
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 407
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    nop

    .line 409
    return-void

    .line 405
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 386
    :cond_11
    :try_start_9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssDebug$SatelliteData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 404
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssDebug$SatelliteData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12

    .line 405
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_12
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 367
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisSource:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisHealth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 374
    iget-boolean v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 377
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 378
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 380
    return-void
.end method
