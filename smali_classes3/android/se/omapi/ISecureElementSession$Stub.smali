.class public abstract Landroid/se/omapi/ISecureElementSession$Stub;
.super Landroid/os/Binder;
.source "ISecureElementSession.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final greylist-max-o TRANSACTION_closeChannels:I = 0x3

.field static final greylist-max-o TRANSACTION_getAtr:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x4

.field static final greylist-max-o TRANSACTION_openBasicChannel:I = 0x5

.field static final greylist-max-o TRANSACTION_openLogicalChannel:I = 0x6


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 343
    const-string v0, "android$se$omapi$ISecureElementSession"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->markVintfStability()V

    .line 61
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/se/omapi/ISecureElementSession;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementSession;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/se/omapi/ISecureElementSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 80
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    sget-object v0, Landroid/se/omapi/ISecureElementSession$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 97
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v1

    .line 103
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 153
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 155
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 157
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/se/omapi/ISecureElementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementListener;

    move-result-object v4

    .line 158
    .local v4, "_arg2":Landroid/se/omapi/ISecureElementListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3, v4}, Landroid/se/omapi/ISecureElementSession$Stub;->openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v5

    .line 160
    .local v5, "_result":Landroid/se/omapi/ISecureElementChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 162
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Landroid/se/omapi/ISecureElementListener;
    .end local v5    # "_result":Landroid/se/omapi/ISecureElementChannel;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 143
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/se/omapi/ISecureElementListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementListener;

    move-result-object v4

    .line 144
    .restart local v4    # "_arg2":Landroid/se/omapi/ISecureElementListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3, v4}, Landroid/se/omapi/ISecureElementSession$Stub;->openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;

    move-result-object v5

    .line 146
    .restart local v5    # "_result":Landroid/se/omapi/ISecureElementChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 148
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":Landroid/se/omapi/ISecureElementListener;
    .end local v5    # "_result":Landroid/se/omapi/ISecureElementChannel;
    :pswitch_2
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->isClosed()Z

    move-result v2

    .line 132
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    goto :goto_0

    .line 125
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->closeChannels()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_0

    .line 119
    :pswitch_4
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->close()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_0

    .line 112
    :pswitch_5
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementSession$Stub;->getAtr()[B

    move-result-object v2

    .line 113
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    nop

    .line 169
    .end local v2    # "_result":[B
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
