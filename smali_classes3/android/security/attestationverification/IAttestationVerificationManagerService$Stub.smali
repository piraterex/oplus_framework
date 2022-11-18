.class public abstract Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;
.super Landroid/os/Binder;
.source "IAttestationVerificationManagerService.java"

# interfaces
.implements Landroid/security/attestationverification/IAttestationVerificationManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/IAttestationVerificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_verifyAttestation:I = 0x1

.field static final blacklist TRANSACTION_verifyToken:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.security.attestationverification.IAttestationVerificationManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/attestationverification/IAttestationVerificationManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "android.security.attestationverification.IAttestationVerificationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/attestationverification/IAttestationVerificationManagerService;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Landroid/security/attestationverification/IAttestationVerificationManagerService;

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 55
    packed-switch p0, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_0
    const-string/jumbo v0, "verifyToken"

    return-object v0

    .line 59
    :pswitch_1
    const-string/jumbo v0, "verifyAttestation"

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

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.security.attestationverification.IAttestationVerificationManagerService"

    .line 79
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 90
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 122
    move-object/from16 v14, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 86
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v3

    .line 111
    :pswitch_1
    sget-object v5, Landroid/security/attestationverification/VerificationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/attestationverification/VerificationToken;

    .line 113
    .local v5, "_arg0":Landroid/security/attestationverification/VerificationToken;
    sget-object v6, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelDuration;

    .line 115
    .local v6, "_arg1":Landroid/os/ParcelDuration;
    sget-object v7, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/infra/AndroidFuture;

    .line 116
    .local v7, "_arg2":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object/from16 v14, p0

    invoke-virtual {v14, v5, v6, v7}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->verifyToken(Landroid/security/attestationverification/VerificationToken;Landroid/os/ParcelDuration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 118
    goto :goto_0

    .line 95
    .end local v5    # "_arg0":Landroid/security/attestationverification/VerificationToken;
    .end local v6    # "_arg1":Landroid/os/ParcelDuration;
    .end local v7    # "_arg2":Lcom/android/internal/infra/AndroidFuture;
    :pswitch_2
    move-object/from16 v14, p0

    sget-object v5, Landroid/security/attestationverification/AttestationProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/attestationverification/AttestationProfile;

    .line 97
    .local v5, "_arg0":Landroid/security/attestationverification/AttestationProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .local v6, "_arg1":I
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 101
    .local v7, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 103
    .local v15, "_arg3":[B
    sget-object v8, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 104
    .local v16, "_arg4":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    move-object/from16 v8, p0

    move-object v9, v5

    move v10, v6

    move-object v11, v7

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/security/attestationverification/IAttestationVerificationManagerService$Stub;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V

    .line 106
    nop

    .line 125
    .end local v5    # "_arg0":Landroid/security/attestationverification/AttestationProfile;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;
    :goto_0
    return v3

    nop

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
