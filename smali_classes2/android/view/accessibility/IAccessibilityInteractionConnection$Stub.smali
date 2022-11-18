.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnection.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnection"

.field static final blacklist TRANSACTION_clearAccessibilityFocus:I = 0x7

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x1

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x2

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x4

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x5

.field static final blacklist TRANSACTION_notifyOutsideTouch:I = 0x8

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "notifyOutsideTouch"

    return-object v0

    .line 103
    :pswitch_1
    const-string v0, "clearAccessibilityFocus"

    return-object v0

    .line 99
    :pswitch_2
    const-string v0, "performAccessibilityAction"

    return-object v0

    .line 95
    :pswitch_3
    const-string v0, "focusSearch"

    return-object v0

    .line 91
    :pswitch_4
    const-string v0, "findFocus"

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    .line 83
    :pswitch_6
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    .line 79
    :pswitch_7
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 479
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 118
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 39
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.view.accessibility.IAccessibilityInteractionConnection"

    .line 123
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 124
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 134
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_1

    .line 300
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 130
    :pswitch_0
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v3

    .line 295
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->notifyOutsideTouch()V

    .line 296
    goto/16 :goto_0

    .line 290
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->clearAccessibilityFocus()V

    .line 291
    goto/16 :goto_0

    .line 269
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 271
    .local v16, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 273
    .local v18, "_arg1":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/os/Bundle;

    .line 275
    .local v19, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 277
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v21

    .line 279
    .local v21, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 281
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 283
    .local v23, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 284
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    move-object/from16 v5, p0

    move-wide/from16 v6, v16

    move/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move-wide/from16 v14, v24

    invoke-virtual/range {v5 .. v15}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 286
    goto/16 :goto_0

    .line 243
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Landroid/os/Bundle;
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":J
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 245
    .local v5, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 247
    .local v7, "_arg1":I
    sget-object v8, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Region;

    .line 249
    .local v8, "_arg2":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 251
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v10

    .line 253
    .local v10, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 255
    .local v11, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 257
    .local v12, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 259
    .local v13, "_arg7":J
    sget-object v15, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 261
    .local v15, "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v16

    .line 262
    .local v16, "_arg9":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    move-object/from16 v26, p0

    move-wide/from16 v27, v5

    move/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v31, v9

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move-wide/from16 v35, v13

    move-object/from16 v37, v15

    move-object/from16 v38, v16

    invoke-virtual/range {v26 .. v38}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 264
    goto/16 :goto_0

    .line 217
    .end local v5    # "_arg0":J
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Region;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":J
    .end local v15    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v16    # "_arg9":[F
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 219
    .restart local v5    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 221
    .restart local v7    # "_arg1":I
    sget-object v8, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Region;

    .line 223
    .restart local v8    # "_arg2":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 225
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v10

    .line 227
    .restart local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 229
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 231
    .restart local v12    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 233
    .restart local v13    # "_arg7":J
    sget-object v15, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 235
    .restart local v15    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v16

    .line 236
    .restart local v16    # "_arg9":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    move-object/from16 v17, p0

    move-wide/from16 v18, v5

    move/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move-wide/from16 v26, v13

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    invoke-virtual/range {v17 .. v29}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 238
    goto/16 :goto_0

    .line 191
    .end local v5    # "_arg0":J
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Region;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":J
    .end local v15    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v16    # "_arg9":[F
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 193
    .restart local v5    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v8, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Region;

    .line 197
    .restart local v8    # "_arg2":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 199
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v10

    .line 201
    .restart local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 203
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 205
    .restart local v12    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 207
    .restart local v13    # "_arg7":J
    sget-object v15, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 209
    .restart local v15    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v16

    .line 210
    .restart local v16    # "_arg9":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object/from16 v17, p0

    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move-wide/from16 v26, v13

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    invoke-virtual/range {v17 .. v29}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 212
    goto/16 :goto_0

    .line 165
    .end local v5    # "_arg0":J
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/graphics/Region;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":J
    .end local v15    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v16    # "_arg9":[F
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 167
    .restart local v5    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .restart local v7    # "_arg1":Ljava/lang/String;
    sget-object v8, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Region;

    .line 171
    .restart local v8    # "_arg2":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 173
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v10

    .line 175
    .restart local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 177
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 179
    .restart local v12    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 181
    .restart local v13    # "_arg7":J
    sget-object v15, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/MagnificationSpec;

    .line 183
    .restart local v15    # "_arg8":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v16

    .line 184
    .restart local v16    # "_arg9":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    move-object/from16 v17, p0

    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move-wide/from16 v26, v13

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    invoke-virtual/range {v17 .. v29}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 186
    goto :goto_0

    .line 139
    .end local v5    # "_arg0":J
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/graphics/Region;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":I
    .end local v13    # "_arg7":J
    .end local v15    # "_arg8":Landroid/view/MagnificationSpec;
    .end local v16    # "_arg9":[F
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 141
    .restart local v5    # "_arg0":J
    sget-object v7, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Region;

    .line 143
    .local v7, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 145
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v9

    .line 147
    .local v9, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 149
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 151
    .restart local v11    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 153
    .local v12, "_arg6":J
    sget-object v14, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/MagnificationSpec;

    .line 155
    .local v14, "_arg7":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v15

    .line 157
    .local v15, "_arg8":[F
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 158
    .local v3, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object/from16 v17, p0

    move-wide/from16 v18, v5

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move-wide/from16 v25, v12

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v29, v3

    invoke-virtual/range {v17 .. v29}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 160
    nop

    .line 303
    .end local v3    # "_arg9":Landroid/os/Bundle;
    .end local v5    # "_arg0":J
    .end local v7    # "_arg1":Landroid/graphics/Region;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":I
    .end local v12    # "_arg6":J
    .end local v14    # "_arg7":Landroid/view/MagnificationSpec;
    .end local v15    # "_arg8":[F
    :goto_0
    const/4 v3, 0x1

    return v3

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
