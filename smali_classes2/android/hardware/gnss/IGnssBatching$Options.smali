.class public Landroid/hardware/gnss/IGnssBatching$Options;
.super Ljava/lang/Object;
.source "IGnssBatching.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssBatching$Options;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist flags:I

.field public blacklist minDistanceMeters:F

.field public blacklist periodNanos:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Landroid/hardware/gnss/IGnssBatching$Options$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssBatching$Options$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssBatching$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssBatching$Options;->periodNanos:J

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssBatching$Options;->minDistanceMeters:F

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssBatching$Options;->flags:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 369
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_7

    .line 372
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 379
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 382
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 372
    return-void

    .line 380
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssBatching$Options;->periodNanos:J

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 379
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 382
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    return-void

    .line 380
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssBatching$Options;->minDistanceMeters:F

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 379
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 382
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 376
    return-void

    .line 380
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssBatching$Options;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 382
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 383
    nop

    .line 384
    return-void

    .line 380
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 371
    :cond_7
    :try_start_4
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssBatching$Options;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssBatching$Options;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_8

    .line 380
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_8
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 383
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 357
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssBatching$Options;->periodNanos:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    iget v1, p0, Landroid/hardware/gnss/IGnssBatching$Options;->minDistanceMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 360
    iget v1, p0, Landroid/hardware/gnss/IGnssBatching$Options;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 362
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 363
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 365
    return-void
.end method
