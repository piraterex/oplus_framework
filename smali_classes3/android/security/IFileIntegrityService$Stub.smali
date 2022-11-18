.class public abstract Landroid/security/IFileIntegrityService$Stub;
.super Landroid/os/Binder;
.source "IFileIntegrityService.java"

# interfaces
.implements Landroid/security/IFileIntegrityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IFileIntegrityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IFileIntegrityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isApkVeritySupported:I = 0x1

.field static final blacklist TRANSACTION_isAppSourceCertificateTrusted:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.security.IFileIntegrityService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IFileIntegrityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/IFileIntegrityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "android.security.IFileIntegrityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IFileIntegrityService;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/security/IFileIntegrityService;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroid/security/IFileIntegrityService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IFileIntegrityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 65
    :pswitch_0
    const-string/jumbo v0, "isAppSourceCertificateTrusted"

    return-object v0

    .line 61
    :pswitch_1
    const-string/jumbo v0, "isApkVeritySupported"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 76
    invoke-static {p1}, Landroid/security/IFileIntegrityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    const-string v0, "android.security.IFileIntegrityService"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 92
    packed-switch p1, :pswitch_data_1

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 104
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 106
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3}, Landroid/security/IFileIntegrityService$Stub;->isAppSourceCertificateTrusted([BLjava/lang/String;)Z

    move-result v4

    .line 109
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/security/IFileIntegrityService$Stub;->isApkVeritySupported()Z

    move-result v2

    .line 97
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    nop

    .line 118
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
