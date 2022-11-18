.class public abstract Landroid/security/identity/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/security/identity/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAuthChallenge:I = 0x2

.field static final blacklist TRANSACTION_getCredentialForPresentation:I = 0x5

.field static final blacklist TRANSACTION_getEphemeralKeyPair:I = 0x1

.field static final blacklist TRANSACTION_setReaderEphemeralPublicKey:I = 0x3

.field static final blacklist TRANSACTION_setSessionTranscript:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.security.identity.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/security/identity/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/identity/ISession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.security.identity.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/identity/ISession;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/security/identity/ISession;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/security/identity/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/identity/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "getCredentialForPresentation"

    return-object v0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "setSessionTranscript"

    return-object v0

    .line 76
    :pswitch_2
    const-string/jumbo v0, "setReaderEphemeralPublicKey"

    return-object v0

    .line 72
    :pswitch_3
    const-string v0, "getAuthChallenge"

    return-object v0

    .line 68
    :pswitch_4
    const-string v0, "getEphemeralKeyPair"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 268
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/security/identity/ISession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.security.identity.ISession"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    packed-switch p1, :pswitch_data_1

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 148
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/security/identity/ISession$Stub;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object v3

    .line 151
    .local v3, "_result":Landroid/security/identity/ICredential;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/security/identity/ICredential;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 140
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/security/identity/ISession$Stub;->setSessionTranscript([B)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    goto :goto_0

    .line 130
    .end local v2    # "_arg0":[B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 131
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/security/identity/ISession$Stub;->setReaderEphemeralPublicKey([B)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_0

    .line 122
    .end local v2    # "_arg0":[B
    :pswitch_4
    invoke-virtual {p0}, Landroid/security/identity/ISession$Stub;->getAuthChallenge()J

    move-result-wide v2

    .line 123
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    goto :goto_0

    .line 115
    .end local v2    # "_result":J
    :pswitch_5
    invoke-virtual {p0}, Landroid/security/identity/ISession$Stub;->getEphemeralKeyPair()[B

    move-result-object v2

    .line 116
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    nop

    .line 160
    .end local v2    # "_result":[B
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
