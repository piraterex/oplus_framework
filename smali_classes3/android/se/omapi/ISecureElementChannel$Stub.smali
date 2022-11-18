.class public abstract Landroid/se/omapi/ISecureElementChannel$Stub;
.super Landroid/os/Binder;
.source "ISecureElementChannel.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_getSelectResponse:I = 0x4

.field static final greylist-max-o TRANSACTION_isBasicChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_isClosed:I = 0x2

.field static final greylist-max-o TRANSACTION_selectNext:I = 0x6

.field static final greylist-max-o TRANSACTION_transmit:I = 0x5


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 332
    const-string v0, "android$se$omapi$ISecureElementChannel"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/se/omapi/ISecureElementChannel;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementChannel;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
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

    .line 85
    sget-object v0, Landroid/se/omapi/ISecureElementChannel$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 98
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v1

    .line 104
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->selectNext()Z

    move-result v2

    .line 151
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    goto :goto_0

    .line 141
    .end local v2    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 142
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/se/omapi/ISecureElementChannel$Stub;->transmit([B)[B

    move-result-object v3

    .line 144
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_2
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->getSelectResponse()[B

    move-result-object v2

    .line 134
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    goto :goto_0

    .line 126
    .end local v2    # "_result":[B
    :pswitch_3
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isBasicChannel()Z

    move-result v2

    .line 127
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    goto :goto_0

    .line 119
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->isClosed()Z

    move-result v2

    .line 120
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    goto :goto_0

    .line 113
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementChannel$Stub;->close()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    nop

    .line 160
    :goto_0
    return v1

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
