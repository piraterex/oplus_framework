.class public abstract Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceStateManager.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/IDeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelStateRequest:I = 0x4

.field static final blacklist TRANSACTION_getDeviceStateInfo:I = 0x1

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_requestState:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/devicestate/IDeviceStateManager;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/hardware/devicestate/IDeviceStateManager;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "cancelStateRequest"

    return-object v0

    .line 103
    :pswitch_1
    const-string/jumbo v0, "requestState"

    return-object v0

    .line 99
    :pswitch_2
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 95
    :pswitch_3
    const-string v0, "getDeviceStateInfo"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 296
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 122
    const-string v0, "android.hardware.devicestate.IDeviceStateManager"

    .line 123
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 134
    packed-switch p1, :pswitch_data_1

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->cancelStateRequest()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->requestState(Landroid/os/IBinder;II)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    move-result-object v2

    .line 147
    .local v2, "_arg0":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":Landroid/hardware/devicestate/IDeviceStateManagerCallback;
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v2

    .line 139
    .local v2, "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    nop

    .line 176
    .end local v2    # "_result":Landroid/hardware/devicestate/DeviceStateInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
