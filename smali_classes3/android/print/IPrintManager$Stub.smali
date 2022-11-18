.class public abstract Landroid/print/IPrintManager$Stub;
.super Landroid/os/Binder;
.source "IPrintManager.java"

# interfaces
.implements Landroid/print/IPrintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintManager"

.field static final greylist-max-o TRANSACTION_addPrintJobStateChangeListener:I = 0x6

.field static final greylist-max-o TRANSACTION_addPrintServiceRecommendationsChangeListener:I = 0xd

.field static final greylist-max-o TRANSACTION_addPrintServicesChangeListener:I = 0x8

.field static final greylist-max-o TRANSACTION_cancelPrintJob:I = 0x4

.field static final greylist-max-o TRANSACTION_createPrinterDiscoverySession:I = 0x10

.field static final greylist-max-o TRANSACTION_destroyPrinterDiscoverySession:I = 0x17

.field static final greylist-max-o TRANSACTION_getBindInstantServiceAllowed:I = 0x18

.field static final greylist-max-o TRANSACTION_getCustomPrinterIcon:I = 0x15

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x1

.field static final greylist-max-o TRANSACTION_getPrintServiceRecommendations:I = 0xf

.field static final greylist-max-o TRANSACTION_getPrintServices:I = 0xa

.field static final blacklist TRANSACTION_isPrintServiceEnabled:I = 0xc

.field static final greylist-max-o TRANSACTION_print:I = 0x3

.field static final greylist-max-o TRANSACTION_removePrintJobStateChangeListener:I = 0x7

.field static final greylist-max-o TRANSACTION_removePrintServiceRecommendationsChangeListener:I = 0xe

.field static final greylist-max-o TRANSACTION_removePrintServicesChangeListener:I = 0x9

.field static final greylist-max-o TRANSACTION_restartPrintJob:I = 0x5

.field static final greylist-max-o TRANSACTION_setBindInstantServiceAllowed:I = 0x19

.field static final greylist-max-o TRANSACTION_setPrintServiceEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_startPrinterDiscovery:I = 0x11

.field static final greylist-max-o TRANSACTION_startPrinterStateTracking:I = 0x14

.field static final greylist-max-o TRANSACTION_stopPrinterDiscovery:I = 0x12

.field static final greylist-max-o TRANSACTION_stopPrinterStateTracking:I = 0x16

.field static final greylist-max-o TRANSACTION_validatePrinters:I = 0x13


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 193
    const-string v0, "android.print.IPrintManager"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    const-string v0, "android.print.IPrintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 205
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintManager;

    if-eqz v1, :cond_1

    .line 206
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintManager;

    return-object v1

    .line 208
    :cond_1
    new-instance v1, Landroid/print/IPrintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 217
    packed-switch p0, :pswitch_data_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 317
    :pswitch_0
    const-string/jumbo v0, "setBindInstantServiceAllowed"

    return-object v0

    .line 313
    :pswitch_1
    const-string v0, "getBindInstantServiceAllowed"

    return-object v0

    .line 309
    :pswitch_2
    const-string v0, "destroyPrinterDiscoverySession"

    return-object v0

    .line 305
    :pswitch_3
    const-string/jumbo v0, "stopPrinterStateTracking"

    return-object v0

    .line 301
    :pswitch_4
    const-string v0, "getCustomPrinterIcon"

    return-object v0

    .line 297
    :pswitch_5
    const-string/jumbo v0, "startPrinterStateTracking"

    return-object v0

    .line 293
    :pswitch_6
    const-string/jumbo v0, "validatePrinters"

    return-object v0

    .line 289
    :pswitch_7
    const-string/jumbo v0, "stopPrinterDiscovery"

    return-object v0

    .line 285
    :pswitch_8
    const-string/jumbo v0, "startPrinterDiscovery"

    return-object v0

    .line 281
    :pswitch_9
    const-string v0, "createPrinterDiscoverySession"

    return-object v0

    .line 277
    :pswitch_a
    const-string v0, "getPrintServiceRecommendations"

    return-object v0

    .line 273
    :pswitch_b
    const-string/jumbo v0, "removePrintServiceRecommendationsChangeListener"

    return-object v0

    .line 269
    :pswitch_c
    const-string v0, "addPrintServiceRecommendationsChangeListener"

    return-object v0

    .line 265
    :pswitch_d
    const-string/jumbo v0, "isPrintServiceEnabled"

    return-object v0

    .line 261
    :pswitch_e
    const-string/jumbo v0, "setPrintServiceEnabled"

    return-object v0

    .line 257
    :pswitch_f
    const-string v0, "getPrintServices"

    return-object v0

    .line 253
    :pswitch_10
    const-string/jumbo v0, "removePrintServicesChangeListener"

    return-object v0

    .line 249
    :pswitch_11
    const-string v0, "addPrintServicesChangeListener"

    return-object v0

    .line 245
    :pswitch_12
    const-string/jumbo v0, "removePrintJobStateChangeListener"

    return-object v0

    .line 241
    :pswitch_13
    const-string v0, "addPrintJobStateChangeListener"

    return-object v0

    .line 237
    :pswitch_14
    const-string/jumbo v0, "restartPrintJob"

    return-object v0

    .line 233
    :pswitch_15
    const-string v0, "cancelPrintJob"

    return-object v0

    .line 229
    :pswitch_16
    const-string/jumbo v0, "print"

    return-object v0

    .line 225
    :pswitch_17
    const-string v0, "getPrintJobInfo"

    return-object v0

    .line 221
    :pswitch_18
    const-string v0, "getPrintJobInfos"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 212
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1213
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 328
    invoke-static {p1}, Landroid/print/IPrintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.print.IPrintManager"

    .line 333
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 334
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 344
    packed-switch v8, :pswitch_data_1

    .line 647
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 340
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    return v12

    .line 637
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 639
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 640
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->setBindInstantServiceAllowed(IZ)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto/16 :goto_0

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v7, v0}, Landroid/print/IPrintManager$Stub;->getBindInstantServiceAllowed(I)Z

    move-result v1

    .line 630
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v0

    .line 618
    .local v0, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_0

    .line 605
    .end local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v1    # "_arg1":I
    :pswitch_4
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 607
    .local v0, "_arg0":Landroid/print/PrinterId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 608
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":I
    :pswitch_5
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 595
    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 598
    .local v2, "_result":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    goto/16 :goto_0

    .line 582
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/graphics/drawable/Icon;
    :pswitch_6
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 584
    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 585
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;I)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":I
    :pswitch_7
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->validatePrinters(Ljava/util/List;I)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_0

    .line 560
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v0

    .line 562
    .local v0, "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_0

    .line 547
    .end local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v0

    .line 549
    .restart local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    sget-object v1, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 551
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    goto/16 :goto_0

    .line 536
    .end local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v0

    .line 538
    .restart local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 539
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":Landroid/print/IPrinterDiscoveryObserver;
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v7, v0}, Landroid/print/IPrintManager$Stub;->getPrintServiceRecommendations(I)Ljava/util/List;

    move-result-object v1

    .line 529
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 531
    goto/16 :goto_0

    .line 515
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_0

    .line 504
    .end local v0    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationsChangeListener;

    move-result-object v0

    .line 506
    .restart local v0    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .end local v1    # "_arg1":I
    :pswitch_e
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 494
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 495
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->isPrintServiceEnabled(Landroid/content/ComponentName;I)Z

    move-result v2

    .line 497
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 481
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 483
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 470
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->getPrintServices(II)Ljava/util/List;

    move-result-object v2

    .line 472
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 474
    goto/16 :goto_0

    .line 456
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object v0

    .line 458
    .local v0, "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_0

    .line 445
    .end local v0    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintServicesChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintServicesChangeListener;

    move-result-object v0

    .line 447
    .restart local v0    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":Landroid/print/IPrintServicesChangeListener;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v0

    .line 436
    .local v0, "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v1    # "_arg1":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintJobStateChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintJobStateChangeListener;

    move-result-object v0

    .line 423
    .restart local v0    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":Landroid/print/IPrintJobStateChangeListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_15
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 410
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->restartPrintJob(Landroid/print/PrintJobId;II)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    goto/16 :goto_0

    .line 395
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_16
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 397
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->cancelPrintJob(Landroid/print/PrintJobId;II)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto :goto_0

    .line 375
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintDocumentAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapter;

    move-result-object v14

    .line 379
    .local v14, "_arg1":Landroid/print/IPrintDocumentAdapter;
    sget-object v0, Landroid/print/PrintAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/print/PrintAttributes;

    .line 381
    .local v15, "_arg2":Landroid/print/PrintAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 385
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 386
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/print/IPrintManager$Stub;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 388
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 390
    goto :goto_0

    .line 361
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/print/IPrintDocumentAdapter;
    .end local v15    # "_arg2":Landroid/print/PrintAttributes;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_18
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 363
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v7, v0, v1, v2}, Landroid/print/IPrintManager$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;

    move-result-object v3

    .line 368
    .local v3, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    goto :goto_0

    .line 349
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/print/PrintJobInfo;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 351
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v7, v0, v1}, Landroid/print/IPrintManager$Stub;->getPrintJobInfos(II)Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 356
    nop

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
