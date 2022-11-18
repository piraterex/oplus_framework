.class public abstract Landroid/os/IDeviceIdentifiersPolicyService$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdentifiersPolicyService.java"

# interfaces
.implements Landroid/os/IDeviceIdentifiersPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdentifiersPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdentifiersPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdentifiersPolicyService"

.field static final blacklist TRANSACTION_getPhoneSerialForPackage:I = 0x3

.field static final greylist-max-o TRANSACTION_getSerial:I = 0x1

.field static final blacklist TRANSACTION_getSerialForPackage:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.os.IDeviceIdentifiersPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdentifiersPolicyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "android.os.IDeviceIdentifiersPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceIdentifiersPolicyService;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/os/IDeviceIdentifiersPolicyService;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Landroid/os/IDeviceIdentifiersPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "getPhoneSerialForPackage"

    return-object v0

    .line 67
    :pswitch_1
    const-string v0, "getSerialForPackage"

    return-object v0

    .line 63
    :pswitch_2
    const-string v0, "getSerial"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 217
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.os.IDeviceIdentifiersPolicyService"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 98
    packed-switch p1, :pswitch_data_1

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 122
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->getPhoneSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->getSerialForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/IDeviceIdentifiersPolicyService$Stub;->getSerial()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    nop

    .line 136
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
