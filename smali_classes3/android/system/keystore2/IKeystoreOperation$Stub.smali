.class public abstract Landroid/system/keystore2/IKeystoreOperation$Stub;
.super Landroid/os/Binder;
.source "IKeystoreOperation.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x4

.field static final blacklist TRANSACTION_finish:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_update:I = 0x2

.field static final blacklist TRANSACTION_updateAad:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreOperation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreOperation;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreOperation;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
    return-object p0
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

    .line 76
    sget-object v0, Landroid/system/keystore2/IKeystoreOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 84
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 89
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v1

    .line 95
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;->abort()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 126
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 127
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/system/keystore2/IKeystoreOperation$Stub;->finish([B[B)[B

    move-result-object v4

    .line 129
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 131
    goto :goto_0

    .line 114
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreOperation$Stub;->update([B)[B

    move-result-object v3

    .line 117
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 119
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 106
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreOperation$Stub;->updateAad([B)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    nop

    .line 144
    .end local v2    # "_arg0":[B
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
