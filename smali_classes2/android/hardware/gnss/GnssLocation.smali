.class public Landroid/hardware/gnss/GnssLocation;
.super Ljava/lang/Object;
.source "GnssLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/GnssLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HAS_ALTITUDE:I = 0x2

.field public static final blacklist HAS_BEARING:I = 0x8

.field public static final blacklist HAS_BEARING_ACCURACY:I = 0x80

.field public static final blacklist HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final blacklist HAS_LAT_LONG:I = 0x1

.field public static final blacklist HAS_SPEED:I = 0x4

.field public static final blacklist HAS_SPEED_ACCURACY:I = 0x40

.field public static final blacklist HAS_VERTICAL_ACCURACY:I = 0x20


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:D

.field public blacklist elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

.field public blacklist gnssLocationFlags:I

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:D

.field public blacklist timestampMillis:J

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/hardware/gnss/GnssLocation$1;

    invoke-direct {v0}, Landroid/hardware/gnss/GnssLocation$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/GnssLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    .line 10
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    .line 11
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    .line 12
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    .line 13
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    .line 14
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    .line 15
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 111
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/GnssLocation;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 104
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 58
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_19

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 87
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 87
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 87
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 87
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 87
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 87
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 87
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 87
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 87
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 87
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 87
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 87
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_17
    :try_start_c
    sget-object v2, Landroid/hardware/gnss/ElapsedRealtime;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/ElapsedRealtime;

    iput-object v2, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 86
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 89
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    nop

    .line 91
    return-void

    .line 87
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 60
    :cond_19
    :try_start_d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/GnssLocation;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 86
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/GnssLocation;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1a

    .line 87
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_1a
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 37
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/gnss/GnssLocation;->gnssLocationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 40
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->altitudeMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->speedMetersPerSec:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->bearingDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->verticalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 48
    iget-wide v1, p0, Landroid/hardware/gnss/GnssLocation;->timestampMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v1, p0, Landroid/hardware/gnss/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/ElapsedRealtime;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 51
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void
.end method
