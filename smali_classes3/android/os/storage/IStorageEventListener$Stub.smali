.class public abstract Landroid/os/storage/IStorageEventListener$Stub;
.super Landroid/os/Binder;
.source "IStorageEventListener.java"

# interfaces
.implements Landroid/os/storage/IStorageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageEventListener"

.field static final greylist-max-o TRANSACTION_onDiskDestroyed:I = 0x7

.field static final greylist-max-o TRANSACTION_onDiskScanned:I = 0x6

.field static final greylist-max-o TRANSACTION_onStorageStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onUsbMassStorageConnectionChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onVolumeForgotten:I = 0x5

.field static final greylist-max-o TRANSACTION_onVolumeRecordChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onVolumeStateChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.os.storage.IStorageEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    const-string v0, "android.os.storage.IStorageEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IStorageEventListener;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageEventListener;

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Landroid/os/storage/IStorageEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 88
    packed-switch p0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_0
    const-string/jumbo v0, "onDiskDestroyed"

    return-object v0

    .line 112
    :pswitch_1
    const-string/jumbo v0, "onDiskScanned"

    return-object v0

    .line 108
    :pswitch_2
    const-string/jumbo v0, "onVolumeForgotten"

    return-object v0

    .line 104
    :pswitch_3
    const-string/jumbo v0, "onVolumeRecordChanged"

    return-object v0

    .line 100
    :pswitch_4
    const-string/jumbo v0, "onVolumeStateChanged"

    return-object v0

    .line 96
    :pswitch_5
    const-string/jumbo v0, "onStorageStateChanged"

    return-object v0

    .line 92
    :pswitch_6
    const-string/jumbo v0, "onUsbMassStorageConnectionChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 347
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Landroid/os/storage/IStorageEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const-string v0, "android.os.storage.IStorageEventListener"

    .line 132
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 143
    packed-switch p1, :pswitch_data_1

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 206
    :pswitch_1
    sget-object v2, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    .line 207
    .local v2, "_arg0":Landroid/os/storage/DiskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 209
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":Landroid/os/storage/DiskInfo;
    :pswitch_2
    sget-object v2, Landroid/os/storage/DiskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    .line 198
    .restart local v2    # "_arg0":Landroid/os/storage/DiskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, v2, v3}, Landroid/os/storage/IStorageEventListener$Stub;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 201
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Landroid/os/storage/DiskInfo;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeForgotten(Ljava/lang/String;)V

    .line 191
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    sget-object v2, Landroid/os/storage/VolumeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 181
    .local v2, "_arg0":Landroid/os/storage/VolumeRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 183
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":Landroid/os/storage/VolumeRecord;
    :pswitch_5
    sget-object v2, Landroid/os/storage/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 170
    .local v2, "_arg0":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/storage/IStorageEventListener$Stub;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 175
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Landroid/os/storage/VolumeInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/storage/IStorageEventListener$Stub;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 148
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 149
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/os/storage/IStorageEventListener$Stub;->onUsbMassStorageConnectionChanged(Z)V

    .line 151
    nop

    .line 216
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
