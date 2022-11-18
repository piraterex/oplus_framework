.class public Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AGnssRefLocationCellID"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist arfcn:I

.field public blacklist cid:J

.field public blacklist lac:I

.field public blacklist mcc:I

.field public blacklist mnc:I

.field public blacklist pcid:I

.field public blacklist tac:I

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    .line 301
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    .line 302
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    .line 303
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    .line 304
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    .line 305
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    .line 306
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 341
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 344
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 344
    return-void

    .line 362
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->type:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 346
    return-void

    .line 362
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 348
    return-void

    .line 362
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 350
    return-void

    .line 362
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 352
    return-void

    .line 362
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 354
    return-void

    .line 362
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 356
    return-void

    .line 362
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 358
    return-void

    .line 362
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 361
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 364
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 365
    nop

    .line 366
    return-void

    .line 362
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 343
    :cond_11
    :try_start_9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 361
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12

    .line 362
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_12
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 365
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 324
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-wide v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 330
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 334
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 335
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 337
    return-void
.end method
