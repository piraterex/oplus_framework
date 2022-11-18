.class public abstract Landroid/security/IKeyChainService$Stub;
.super Landroid/os/Binder;
.source "IKeyChainService.java"

# interfaces
.implements Landroid/security/IKeyChainService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeyChainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeyChainService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.security.IKeyChainService"

.field static final greylist-max-o TRANSACTION_containsCaAlias:I = 0x11

.field static final blacklist TRANSACTION_containsKeyPair:I = 0xb

.field static final greylist-max-o TRANSACTION_deleteCaCertificate:I = 0xd

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6

.field static final greylist-max-o TRANSACTION_getCaCertificateChainAliases:I = 0x13

.field static final greylist-max-o TRANSACTION_getCaCertificates:I = 0x3

.field static final greylist-max-o TRANSACTION_getCertificate:I = 0x2

.field static final blacklist TRANSACTION_getCredentialManagementAppPackageName:I = 0x16

.field static final blacklist TRANSACTION_getCredentialManagementAppPolicy:I = 0x17

.field static final greylist-max-o TRANSACTION_getEncodedCaCertificate:I = 0x12

.field static final blacklist TRANSACTION_getGrants:I = 0xc

.field static final blacklist TRANSACTION_getPredefinedAliasForPackageAndUri:I = 0x18

.field static final greylist-max-o TRANSACTION_getSystemCaAliases:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserCaAliases:I = 0xf

.field static final blacklist TRANSACTION_getWifiKeyGrantAsUser:I = 0x1d

.field static final blacklist TRANSACTION_hasCredentialManagementApp:I = 0x15

.field static final greylist-max-o TRANSACTION_hasGrant:I = 0x1c

.field static final greylist-max-o TRANSACTION_installCaCertificate:I = 0x8

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x9

.field static final blacklist TRANSACTION_isCredentialManagementApp:I = 0x1a

.field static final greylist-max-o TRANSACTION_isUserSelectable:I = 0x4

.field static final blacklist TRANSACTION_removeCredentialManagementApp:I = 0x19

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0xa

.field static final greylist-max-o TRANSACTION_requestPrivateKey:I = 0x1

.field static final greylist-max-o TRANSACTION_reset:I = 0xe

.field static final blacklist TRANSACTION_setCredentialManagementApp:I = 0x14

.field static final greylist-max-o TRANSACTION_setGrant:I = 0x1b

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x7

.field static final greylist-max-o TRANSACTION_setUserSelectable:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    const-string v0, "android.security.IKeyChainService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeyChainService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    const-string v0, "android.security.IKeyChainService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 159
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeyChainService;

    if-eqz v1, :cond_1

    .line 160
    move-object v1, v0

    check-cast v1, Landroid/security/IKeyChainService;

    return-object v1

    .line 162
    :cond_1
    new-instance v1, Landroid/security/IKeyChainService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/IKeyChainService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 287
    :pswitch_0
    const-string/jumbo v0, "getWifiKeyGrantAsUser"

    return-object v0

    .line 283
    :pswitch_1
    const-string/jumbo v0, "hasGrant"

    return-object v0

    .line 279
    :pswitch_2
    const-string/jumbo v0, "setGrant"

    return-object v0

    .line 275
    :pswitch_3
    const-string/jumbo v0, "isCredentialManagementApp"

    return-object v0

    .line 271
    :pswitch_4
    const-string/jumbo v0, "removeCredentialManagementApp"

    return-object v0

    .line 267
    :pswitch_5
    const-string v0, "getPredefinedAliasForPackageAndUri"

    return-object v0

    .line 263
    :pswitch_6
    const-string v0, "getCredentialManagementAppPolicy"

    return-object v0

    .line 259
    :pswitch_7
    const-string v0, "getCredentialManagementAppPackageName"

    return-object v0

    .line 255
    :pswitch_8
    const-string/jumbo v0, "hasCredentialManagementApp"

    return-object v0

    .line 251
    :pswitch_9
    const-string/jumbo v0, "setCredentialManagementApp"

    return-object v0

    .line 247
    :pswitch_a
    const-string v0, "getCaCertificateChainAliases"

    return-object v0

    .line 243
    :pswitch_b
    const-string v0, "getEncodedCaCertificate"

    return-object v0

    .line 239
    :pswitch_c
    const-string v0, "containsCaAlias"

    return-object v0

    .line 235
    :pswitch_d
    const-string/jumbo v0, "getSystemCaAliases"

    return-object v0

    .line 231
    :pswitch_e
    const-string/jumbo v0, "getUserCaAliases"

    return-object v0

    .line 227
    :pswitch_f
    const-string/jumbo v0, "reset"

    return-object v0

    .line 223
    :pswitch_10
    const-string v0, "deleteCaCertificate"

    return-object v0

    .line 219
    :pswitch_11
    const-string v0, "getGrants"

    return-object v0

    .line 215
    :pswitch_12
    const-string v0, "containsKeyPair"

    return-object v0

    .line 211
    :pswitch_13
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 207
    :pswitch_14
    const-string/jumbo v0, "installKeyPair"

    return-object v0

    .line 203
    :pswitch_15
    const-string/jumbo v0, "installCaCertificate"

    return-object v0

    .line 199
    :pswitch_16
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 195
    :pswitch_17
    const-string v0, "generateKeyPair"

    return-object v0

    .line 191
    :pswitch_18
    const-string/jumbo v0, "setUserSelectable"

    return-object v0

    .line 187
    :pswitch_19
    const-string/jumbo v0, "isUserSelectable"

    return-object v0

    .line 183
    :pswitch_1a
    const-string v0, "getCaCertificates"

    return-object v0

    .line 179
    :pswitch_1b
    const-string v0, "getCertificate"

    return-object v0

    .line 175
    :pswitch_1c
    const-string/jumbo v0, "requestPrivateKey"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    .line 166
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1196
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 298
    invoke-static {p1}, Landroid/security/IKeyChainService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 302
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.security.IKeyChainService"

    .line 303
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 304
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 314
    packed-switch v7, :pswitch_data_1

    .line 614
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 310
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    return v11

    .line 605
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getWifiKeyGrantAsUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->hasGrant(ILjava/lang/String;)Z

    move-result v2

    .line 598
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 600
    goto/16 :goto_0

    .line 579
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 581
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 584
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v6, v0, v1, v2}, Landroid/security/IKeyChainService$Stub;->setGrant(ILjava/lang/String;Z)Z

    move-result v3

    .line 586
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 588
    goto/16 :goto_0

    .line 569
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->isCredentialManagementApp(Ljava/lang/String;)Z

    move-result v1

    .line 572
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 574
    goto/16 :goto_0

    .line 562
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->removeCredentialManagementApp()V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_0

    .line 551
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 554
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getPredefinedAliasForPackageAndUri(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    goto/16 :goto_0

    .line 543
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v0

    .line 544
    .local v0, "_result":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 546
    goto/16 :goto_0

    .line 536
    .end local v0    # "_result":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    goto/16 :goto_0

    .line 529
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->hasCredentialManagementApp()Z

    move-result v0

    .line 530
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 532
    goto/16 :goto_0

    .line 519
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/security/AppUriAuthenticationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/AppUriAuthenticationPolicy;

    .line 522
    .local v1, "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/security/AppUriAuthenticationPolicy;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 509
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 510
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 512
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 514
    goto/16 :goto_0

    .line 495
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 498
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 500
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 502
    goto/16 :goto_0

    .line 485
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    .line 488
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 490
    goto/16 :goto_0

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    .line 478
    .local v0, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    goto/16 :goto_0

    .line 470
    .end local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    .line 471
    .restart local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    goto/16 :goto_0

    .line 463
    .end local v0    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/security/IKeyChainService$Stub;->reset()Z

    move-result v0

    .line 464
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    goto/16 :goto_0

    .line 454
    .end local v0    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v1

    .line 457
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 459
    goto/16 :goto_0

    .line 444
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getGrants(Ljava/lang/String;)[I

    move-result-object v1

    .line 447
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 449
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->containsKeyPair(Ljava/lang/String;)Z

    move-result v1

    .line 437
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto/16 :goto_0

    .line 424
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 425
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->removeKeyPair(Ljava/lang/String;)Z

    move-result v1

    .line 427
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 408
    .local v12, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 410
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 412
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 414
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 415
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/security/IKeyChainService$Stub;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result v0

    .line 417
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto/16 :goto_0

    .line 396
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":[B
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 397
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    goto/16 :goto_0

    .line 382
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 386
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 387
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v6, v0, v1, v2}, Landroid/security/IKeyChainService$Stub;->setKeyPairCertificate(Ljava/lang/String;[B[B)Z

    move-result v3

    .line 389
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 391
    goto/16 :goto_0

    .line 370
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 373
    .local v1, "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->generateKeyPair(Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;)I

    move-result v2

    .line 375
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    goto :goto_0

    .line 359
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 362
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0, v1}, Landroid/security/IKeyChainService$Stub;->setUserSelectable(Ljava/lang/String;Z)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto :goto_0

    .line 349
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->isUserSelectable(Ljava/lang/String;)Z

    move-result v1

    .line 352
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v1

    .line 342
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 344
    goto :goto_0

    .line 329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->getCertificate(Ljava/lang/String;)[B

    move-result-object v1

    .line 332
    .restart local v1    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 334
    goto :goto_0

    .line 319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v6, v0}, Landroid/security/IKeyChainService$Stub;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    nop

    .line 617
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
