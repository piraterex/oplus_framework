.class public abstract Landroid/service/oemlock/IOemLockService$Stub;
.super Landroid/os/Binder;
.source "IOemLockService.java"

# interfaces
.implements Landroid/service/oemlock/IOemLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/oemlock/IOemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.oemlock.IOemLockService"

.field static final blacklist TRANSACTION_getLockName:I = 0x1

.field static final greylist-max-o TRANSACTION_isDeviceOemUnlocked:I = 0x7

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowed:I = 0x6

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByCarrier:I = 0x3

.field static final greylist-max-o TRANSACTION_isOemUnlockAllowedByUser:I = 0x5

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByCarrier:I = 0x2

.field static final greylist-max-o TRANSACTION_setOemUnlockAllowedByUser:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "android.service.oemlock.IOemLockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/oemlock/IOemLockService;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/service/oemlock/IOemLockService;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Landroid/service/oemlock/IOemLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/oemlock/IOemLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_0
    const-string/jumbo v0, "isDeviceOemUnlocked"

    return-object v0

    .line 100
    :pswitch_1
    const-string/jumbo v0, "isOemUnlockAllowed"

    return-object v0

    .line 96
    :pswitch_2
    const-string/jumbo v0, "isOemUnlockAllowedByUser"

    return-object v0

    .line 92
    :pswitch_3
    const-string/jumbo v0, "setOemUnlockAllowedByUser"

    return-object v0

    .line 88
    :pswitch_4
    const-string/jumbo v0, "isOemUnlockAllowedByCarrier"

    return-object v0

    .line 84
    :pswitch_5
    const-string/jumbo v0, "setOemUnlockAllowedByCarrier"

    return-object v0

    .line 80
    :pswitch_6
    const-string v0, "getLockName"

    return-object v0

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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 338
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/service/oemlock/IOemLockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "android.service.oemlock.IOemLockService"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 131
    packed-switch p1, :pswitch_data_1

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked()Z

    move-result v2

    .line 184
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    goto :goto_0

    .line 176
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed()Z

    move-result v2

    .line 177
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    goto :goto_0

    .line 169
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser()Z

    move-result v2

    .line 170
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 172
    goto :goto_0

    .line 161
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 162
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 153
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    .line 154
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    goto :goto_0

    .line 143
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 145
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 146
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier(Z[B)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":[B
    :pswitch_7
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    nop

    .line 193
    .end local v2    # "_result":Ljava/lang/String;
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
