.class public Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist row:[D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 215
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_3

    .line 218
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 221
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 224
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 218
    return-void

    .line 222
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->row:[D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 224
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 225
    nop

    .line 226
    return-void

    .line 222
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 217
    :cond_3
    :try_start_2
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_4

    .line 222
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_4
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 225
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 205
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->row:[D

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 208
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 209
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 211
    return-void
.end method
