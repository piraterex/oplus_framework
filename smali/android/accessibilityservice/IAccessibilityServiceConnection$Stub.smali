.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final greylist-max-o TRANSACTION_disableSelf:I = 0xe

.field static final blacklist TRANSACTION_dispatchGesture:I = 0x21

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x4

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x5

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x6

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x7

.field static final blacklist TRANSACTION_getCurrentMagnificationRegion:I = 0x15

.field static final greylist-max-o TRANSACTION_getMagnificationCenterX:I = 0x12

.field static final greylist-max-o TRANSACTION_getMagnificationCenterY:I = 0x13

.field static final blacklist TRANSACTION_getMagnificationConfig:I = 0x10

.field static final greylist-max-o TRANSACTION_getMagnificationRegion:I = 0x14

.field static final greylist-max-o TRANSACTION_getMagnificationScale:I = 0x11

.field static final blacklist TRANSACTION_getOverlayWindowToken:I = 0x23

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xb

.field static final blacklist TRANSACTION_getSoftKeyboardShowMode:I = 0x1b

.field static final blacklist TRANSACTION_getSystemActions:I = 0xd

.field static final greylist-max-o TRANSACTION_getWindow:I = 0x9

.field static final blacklist TRANSACTION_getWindowIdForLeashToken:I = 0x24

.field static final greylist-max-o TRANSACTION_getWindows:I = 0xa

.field static final greylist-max-o TRANSACTION_isAccessibilityButtonAvailable:I = 0x1f

.field static final greylist-max-o TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x22

.field static final blacklist TRANSACTION_logTrace:I = 0x2a

.field static final blacklist TRANSACTION_onDoubleTap:I = 0x2f

.field static final blacklist TRANSACTION_onDoubleTapAndHold:I = 0x30

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x8

.field static final greylist-max-o TRANSACTION_performGlobalAction:I = 0xc

.field static final blacklist TRANSACTION_requestDelegating:I = 0x2e

.field static final blacklist TRANSACTION_requestDragging:I = 0x2d

.field static final blacklist TRANSACTION_requestTouchExploration:I = 0x2c

.field static final blacklist TRANSACTION_resetCurrentMagnification:I = 0x17

.field static final greylist-max-o TRANSACTION_resetMagnification:I = 0x16

.field static final greylist-max-o TRANSACTION_sendGesture:I = 0x20

.field static final blacklist TRANSACTION_setAnimationScale:I = 0x31

.field static final blacklist TRANSACTION_setAttributionTag:I = 0x2

.field static final blacklist TRANSACTION_setCacheEnabled:I = 0x29

.field static final blacklist TRANSACTION_setFocusAppearance:I = 0x28

.field static final blacklist TRANSACTION_setGestureDetectionPassthroughRegion:I = 0x26

.field static final blacklist TRANSACTION_setInputMethodEnabled:I = 0x1e

.field static final greylist-max-o TRANSACTION_setMagnificationCallbackEnabled:I = 0x19

.field static final blacklist TRANSACTION_setMagnificationConfig:I = 0x18

.field static final greylist-max-o TRANSACTION_setOnKeyEventResult:I = 0xf

.field static final blacklist TRANSACTION_setServiceDetectsGesturesEnabled:I = 0x2b

.field static final greylist-max-o TRANSACTION_setServiceInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x1c

.field static final greylist-max-o TRANSACTION_setSoftKeyboardShowMode:I = 0x1a

.field static final blacklist TRANSACTION_setTouchExplorationPassthroughRegion:I = 0x27

.field static final blacklist TRANSACTION_switchToInputMethod:I = 0x1d

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x25


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 201
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 209
    if-nez p0, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 213
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_1

    .line 214
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v1

    .line 216
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 421
    :pswitch_0
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 417
    :pswitch_1
    const-string/jumbo v0, "onDoubleTapAndHold"

    return-object v0

    .line 413
    :pswitch_2
    const-string/jumbo v0, "onDoubleTap"

    return-object v0

    .line 409
    :pswitch_3
    const-string/jumbo v0, "requestDelegating"

    return-object v0

    .line 405
    :pswitch_4
    const-string/jumbo v0, "requestDragging"

    return-object v0

    .line 401
    :pswitch_5
    const-string/jumbo v0, "requestTouchExploration"

    return-object v0

    .line 397
    :pswitch_6
    const-string/jumbo v0, "setServiceDetectsGesturesEnabled"

    return-object v0

    .line 393
    :pswitch_7
    const-string v0, "logTrace"

    return-object v0

    .line 389
    :pswitch_8
    const-string/jumbo v0, "setCacheEnabled"

    return-object v0

    .line 385
    :pswitch_9
    const-string/jumbo v0, "setFocusAppearance"

    return-object v0

    .line 381
    :pswitch_a
    const-string/jumbo v0, "setTouchExplorationPassthroughRegion"

    return-object v0

    .line 377
    :pswitch_b
    const-string/jumbo v0, "setGestureDetectionPassthroughRegion"

    return-object v0

    .line 373
    :pswitch_c
    const-string/jumbo v0, "takeScreenshot"

    return-object v0

    .line 369
    :pswitch_d
    const-string v0, "getWindowIdForLeashToken"

    return-object v0

    .line 365
    :pswitch_e
    const-string v0, "getOverlayWindowToken"

    return-object v0

    .line 361
    :pswitch_f
    const-string v0, "isFingerprintGestureDetectionAvailable"

    return-object v0

    .line 357
    :pswitch_10
    const-string v0, "dispatchGesture"

    return-object v0

    .line 353
    :pswitch_11
    const-string/jumbo v0, "sendGesture"

    return-object v0

    .line 349
    :pswitch_12
    const-string v0, "isAccessibilityButtonAvailable"

    return-object v0

    .line 345
    :pswitch_13
    const-string/jumbo v0, "setInputMethodEnabled"

    return-object v0

    .line 341
    :pswitch_14
    const-string/jumbo v0, "switchToInputMethod"

    return-object v0

    .line 337
    :pswitch_15
    const-string/jumbo v0, "setSoftKeyboardCallbackEnabled"

    return-object v0

    .line 333
    :pswitch_16
    const-string v0, "getSoftKeyboardShowMode"

    return-object v0

    .line 329
    :pswitch_17
    const-string/jumbo v0, "setSoftKeyboardShowMode"

    return-object v0

    .line 325
    :pswitch_18
    const-string/jumbo v0, "setMagnificationCallbackEnabled"

    return-object v0

    .line 321
    :pswitch_19
    const-string/jumbo v0, "setMagnificationConfig"

    return-object v0

    .line 317
    :pswitch_1a
    const-string/jumbo v0, "resetCurrentMagnification"

    return-object v0

    .line 313
    :pswitch_1b
    const-string/jumbo v0, "resetMagnification"

    return-object v0

    .line 309
    :pswitch_1c
    const-string v0, "getCurrentMagnificationRegion"

    return-object v0

    .line 305
    :pswitch_1d
    const-string v0, "getMagnificationRegion"

    return-object v0

    .line 301
    :pswitch_1e
    const-string v0, "getMagnificationCenterY"

    return-object v0

    .line 297
    :pswitch_1f
    const-string v0, "getMagnificationCenterX"

    return-object v0

    .line 293
    :pswitch_20
    const-string v0, "getMagnificationScale"

    return-object v0

    .line 289
    :pswitch_21
    const-string v0, "getMagnificationConfig"

    return-object v0

    .line 285
    :pswitch_22
    const-string/jumbo v0, "setOnKeyEventResult"

    return-object v0

    .line 281
    :pswitch_23
    const-string v0, "disableSelf"

    return-object v0

    .line 277
    :pswitch_24
    const-string v0, "getSystemActions"

    return-object v0

    .line 273
    :pswitch_25
    const-string/jumbo v0, "performGlobalAction"

    return-object v0

    .line 269
    :pswitch_26
    const-string v0, "getServiceInfo"

    return-object v0

    .line 265
    :pswitch_27
    const-string v0, "getWindows"

    return-object v0

    .line 261
    :pswitch_28
    const-string v0, "getWindow"

    return-object v0

    .line 257
    :pswitch_29
    const-string/jumbo v0, "performAccessibilityAction"

    return-object v0

    .line 253
    :pswitch_2a
    const-string v0, "focusSearch"

    return-object v0

    .line 249
    :pswitch_2b
    const-string v0, "findFocus"

    return-object v0

    .line 245
    :pswitch_2c
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    .line 241
    :pswitch_2d
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    .line 237
    :pswitch_2e
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    .line 233
    :pswitch_2f
    const-string/jumbo v0, "setAttributionTag"

    return-object v0

    .line 229
    :pswitch_30
    const-string/jumbo v0, "setServiceInfo"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 220
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1943
    const/16 v0, 0x30

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 432
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.accessibilityservice.IAccessibilityServiceConnection"

    .line 437
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 438
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 448
    packed-switch v13, :pswitch_data_1

    .line 1008
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 444
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    return v10

    .line 1000
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1001
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAnimationScale(F)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 991
    .end local v0    # "_arg0":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 992
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTapAndHold(I)V

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 982
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 983
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTap(I)V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 973
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 974
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDelegating(I)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 962
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 965
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDragging(II)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 953
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 954
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 955
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestTouchExploration(I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 942
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 944
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 945
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceDetectsGesturesEnabled(IZ)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 922
    .local v16, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 924
    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 926
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 928
    .local v21, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 930
    .local v22, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 932
    .local v23, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 934
    .local v25, "_arg6":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 935
    .local v26, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 936
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v13, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    .line 937
    goto/16 :goto_0

    .line 911
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg4":I
    .end local v23    # "_arg5":J
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 912
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setCacheEnabled(Z)V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_0

    .line 900
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 903
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setFocusAppearance(II)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_0

    .line 889
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 891
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 892
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_0

    .line 878
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 881
    .restart local v1    # "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    goto/16 :goto_0

    .line 867
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 869
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 870
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 871
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshot(ILandroid/os/RemoteCallback;)V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    goto/16 :goto_0

    .line 857
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 858
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v1

    .line 860
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    goto/16 :goto_0

    .line 847
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 849
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 850
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 852
    goto/16 :goto_0

    .line 839
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/IBinder;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v0

    .line 840
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 842
    goto/16 :goto_0

    .line 827
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 829
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 831
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 832
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_0

    .line 816
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 819
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    goto/16 :goto_0

    .line 808
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v0

    .line 809
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 811
    goto/16 :goto_0

    .line 797
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 800
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v2

    .line 802
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    goto/16 :goto_0

    .line 787
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 788
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v1

    .line 790
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 792
    goto/16 :goto_0

    .line 778
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 779
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSoftKeyboardShowMode()I

    move-result v0

    .line 771
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    goto/16 :goto_0

    .line 761
    .end local v0    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v1

    .line 764
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 766
    goto/16 :goto_0

    .line 750
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 752
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 753
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(IZ)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    goto/16 :goto_0

    .line 736
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 740
    .local v1, "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 741
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v3

    .line 743
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 745
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 726
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 727
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetCurrentMagnification(IZ)Z

    move-result v2

    .line 729
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 731
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 714
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 715
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(IZ)Z

    move-result v2

    .line 717
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 719
    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    .line 705
    .local v1, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 707
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 693
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    .line 695
    .restart local v1    # "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 697
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY(I)F

    move-result v1

    .line 685
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 687
    goto/16 :goto_0

    .line 672
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX(I)F

    move-result v1

    .line 675
    .restart local v1    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 677
    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 663
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale(I)F

    move-result v1

    .line 665
    .restart local v1    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 667
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 653
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 655
    .local v1, "_result":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 657
    goto/16 :goto_0

    .line 642
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/accessibilityservice/MagnificationConfig;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 644
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    .line 647
    goto/16 :goto_0

    .line 635
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    goto/16 :goto_0

    .line 628
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSystemActions()Ljava/util/List;

    move-result-object v0

    .line 629
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 631
    goto/16 :goto_0

    .line 619
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v1

    .line 622
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 624
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 612
    .local v0, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 614
    goto/16 :goto_0

    .line 604
    .end local v0    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v0

    .line 605
    .local v0, "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 607
    goto/16 :goto_0

    .line 595
    .end local v0    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 598
    .local v1, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 575
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 577
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 579
    .local v11, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 581
    .local v18, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 583
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v20

    .line 585
    .local v20, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 586
    .local v21, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-wide/from16 v8, v21

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0

    .line 588
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto/16 :goto_0

    .line 553
    .end local v0    # "_result":Z
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Landroid/os/Bundle;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 555
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 557
    .local v10, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 559
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 561
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 563
    .local v18, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 564
    .local v19, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 568
    goto/16 :goto_0

    .line 533
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 535
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 537
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 539
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 541
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 543
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 544
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 545
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 546
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 548
    goto/16 :goto_0

    .line 513
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 515
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 517
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 519
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 521
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 523
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 524
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 526
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 528
    goto/16 :goto_0

    .line 493
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 495
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 497
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 499
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 501
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 503
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 504
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 506
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 508
    goto/16 :goto_0

    .line 471
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 473
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 475
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 477
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 479
    .local v18, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 481
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 483
    .local v20, "_arg5":J
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 484
    .local v22, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-wide/from16 v7, v20

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 486
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 488
    goto :goto_0

    .line 462
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_30
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAttributionTag(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    goto :goto_0

    .line 453
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 454
    .local v0, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    nop

    .line 1011
    .end local v0    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
