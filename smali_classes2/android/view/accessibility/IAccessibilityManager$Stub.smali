.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final greylist-max-o TRANSACTION_addAccessibilityInteractionConnection:I = 0x7

.field static final greylist-max-o TRANSACTION_addClient:I = 0x3

.field static final blacklist TRANSACTION_associateEmbeddedHierarchy:I = 0x18

.field static final blacklist TRANSACTION_disassociateEmbeddedHierarchy:I = 0x19

.field static final blacklist TRANSACTION_getAccessibilityShortcutTargets:I = 0x11

.field static final blacklist TRANSACTION_getAccessibilityWindowId:I = 0x13

.field static final greylist-max-o TRANSACTION_getEnabledAccessibilityServiceList:I = 0x6

.field static final blacklist TRANSACTION_getFocusColor:I = 0x1b

.field static final blacklist TRANSACTION_getFocusStrokeWidth:I = 0x1a

.field static final greylist-max-o TRANSACTION_getInstalledAccessibilityServiceList:I = 0x5

.field static final blacklist TRANSACTION_getRecommendedTimeoutMillis:I = 0x14

.field static final greylist-max-o TRANSACTION_getWindowToken:I = 0xd

.field static final greylist-max-o TRANSACTION_interrupt:I = 0x1

.field static final blacklist TRANSACTION_isAudioDescriptionByDefaultEnabled:I = 0x1c

.field static final blacklist TRANSACTION_isSystemAudioCaptioningUiEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonVisibilityChanged:I = 0xf

.field static final greylist-max-o TRANSACTION_performAccessibilityShortcut:I = 0x10

.field static final blacklist TRANSACTION_registerSystemAction:I = 0x15

.field static final greylist-max-o TRANSACTION_registerUiTestAutomationService:I = 0xa

.field static final greylist-max-o TRANSACTION_removeAccessibilityInteractionConnection:I = 0x8

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final greylist-max-o TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_sendFingerprintGesture:I = 0x12

.field static final greylist-max-o TRANSACTION_setPictureInPictureActionReplacingConnection:I = 0x9

.field static final blacklist TRANSACTION_setSystemAudioCaptioningEnabled:I = 0x1d

.field static final blacklist TRANSACTION_setSystemAudioCaptioningUiEnabled:I = 0x1f

.field static final blacklist TRANSACTION_setWindowMagnificationConnection:I = 0x17

.field static final greylist-max-o TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xc

.field static final blacklist TRANSACTION_unregisterSystemAction:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterUiTestAutomationService:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 147
    if-nez p0, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 151
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    .line 152
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityManager;

    return-object v1

    .line 154
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 163
    packed-switch p0, :pswitch_data_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 287
    :pswitch_0
    const-string v0, "setSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 283
    :pswitch_1
    const-string v0, "isSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 279
    :pswitch_2
    const-string v0, "setSystemAudioCaptioningEnabled"

    return-object v0

    .line 275
    :pswitch_3
    const-string v0, "isAudioDescriptionByDefaultEnabled"

    return-object v0

    .line 271
    :pswitch_4
    const-string v0, "getFocusColor"

    return-object v0

    .line 267
    :pswitch_5
    const-string v0, "getFocusStrokeWidth"

    return-object v0

    .line 263
    :pswitch_6
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    .line 259
    :pswitch_7
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    .line 255
    :pswitch_8
    const-string v0, "setWindowMagnificationConnection"

    return-object v0

    .line 251
    :pswitch_9
    const-string/jumbo v0, "unregisterSystemAction"

    return-object v0

    .line 247
    :pswitch_a
    const-string v0, "registerSystemAction"

    return-object v0

    .line 243
    :pswitch_b
    const-string v0, "getRecommendedTimeoutMillis"

    return-object v0

    .line 239
    :pswitch_c
    const-string v0, "getAccessibilityWindowId"

    return-object v0

    .line 235
    :pswitch_d
    const-string v0, "sendFingerprintGesture"

    return-object v0

    .line 231
    :pswitch_e
    const-string v0, "getAccessibilityShortcutTargets"

    return-object v0

    .line 227
    :pswitch_f
    const-string v0, "performAccessibilityShortcut"

    return-object v0

    .line 223
    :pswitch_10
    const-string v0, "notifyAccessibilityButtonVisibilityChanged"

    return-object v0

    .line 219
    :pswitch_11
    const-string v0, "notifyAccessibilityButtonClicked"

    return-object v0

    .line 215
    :pswitch_12
    const-string v0, "getWindowToken"

    return-object v0

    .line 211
    :pswitch_13
    const-string v0, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    return-object v0

    .line 207
    :pswitch_14
    const-string/jumbo v0, "unregisterUiTestAutomationService"

    return-object v0

    .line 203
    :pswitch_15
    const-string v0, "registerUiTestAutomationService"

    return-object v0

    .line 199
    :pswitch_16
    const-string v0, "setPictureInPictureActionReplacingConnection"

    return-object v0

    .line 195
    :pswitch_17
    const-string v0, "removeAccessibilityInteractionConnection"

    return-object v0

    .line 191
    :pswitch_18
    const-string v0, "addAccessibilityInteractionConnection"

    return-object v0

    .line 187
    :pswitch_19
    const-string v0, "getEnabledAccessibilityServiceList"

    return-object v0

    .line 183
    :pswitch_1a
    const-string v0, "getInstalledAccessibilityServiceList"

    return-object v0

    .line 179
    :pswitch_1b
    const-string v0, "removeClient"

    return-object v0

    .line 175
    :pswitch_1c
    const-string v0, "addClient"

    return-object v0

    .line 171
    :pswitch_1d
    const-string v0, "sendAccessibilityEvent"

    return-object v0

    .line 167
    :pswitch_1e
    const-string v0, "interrupt"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 158
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1197
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 298
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v10, "android.view.accessibility.IAccessibilityManager"

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

    .line 630
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 310
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    return v11

    .line 620
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 622
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 623
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    goto/16 :goto_0

    .line 610
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 611
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v1

    .line 613
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 615
    goto/16 :goto_0

    .line 599
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 601
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled(ZI)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_0

    .line 591
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAudioDescriptionByDefaultEnabled()Z

    move-result v0

    .line 592
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 594
    goto/16 :goto_0

    .line 584
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusColor()I

    move-result v0

    .line 585
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    goto/16 :goto_0

    .line 577
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusStrokeWidth()I

    move-result v0

    .line 578
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    goto/16 :goto_0

    .line 569
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 560
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 561
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_0

    .line 550
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;

    move-result-object v0

    .line 551
    .local v0, "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    .line 553
    goto/16 :goto_0

    .line 542
    .end local v0    # "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction(I)V

    .line 545
    goto/16 :goto_0

    .line 532
    .end local v0    # "_arg0":I
    :pswitch_b
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 534
    .local v0, "_arg0":Landroid/app/RemoteAction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 536
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 537
    goto/16 :goto_0

    .line 524
    .end local v0    # "_arg0":Landroid/app/RemoteAction;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getRecommendedTimeoutMillis()J

    move-result-wide v0

    .line 525
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 527
    goto/16 :goto_0

    .line 515
    .end local v0    # "_result":J
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 516
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v1

    .line 518
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    goto/16 :goto_0

    .line 505
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendFingerprintGesture(I)Z

    move-result v1

    .line 508
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 510
    goto/16 :goto_0

    .line 495
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    .line 498
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 500
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_0

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 478
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 466
    .end local v0    # "_arg0":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 468
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v2

    .line 459
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 461
    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_14
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 445
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 446
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 435
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_0

    .line 419
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 421
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 423
    .local v1, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    sget-object v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 425
    .local v2, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 426
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_0

    .line 410
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "_arg3":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 411
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto/16 :goto_0

    .line 401
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 402
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto/16 :goto_0

    .line 383
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    .line 385
    .local v12, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 387
    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    .line 389
    .local v14, "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 391
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 392
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    .line 394
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    goto/16 :goto_0

    .line 371
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/view/IWindow;
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 378
    goto :goto_0

    .line 361
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 364
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 366
    goto :goto_0

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 351
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 352
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2

    .line 354
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 356
    goto :goto_0

    .line 337
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v2

    .line 342
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 344
    goto :goto_0

    .line 327
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_1e
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 329
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 332
    goto :goto_0

    .line 319
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 322
    nop

    .line 633
    .end local v0    # "_arg0":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
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
