.class public abstract Landroid/view/accessibility/IWindowMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IWindowMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IWindowMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableWindowMagnification:I = 0x3

.field static final blacklist TRANSACTION_enableWindowMagnification:I = 0x1

.field static final blacklist TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final blacklist TRANSACTION_moveWindowMagnifierToPosition:I = 0x5

.field static final blacklist TRANSACTION_removeMagnificationButton:I = 0x7

.field static final blacklist TRANSACTION_setConnectionCallback:I = 0x8

.field static final blacklist TRANSACTION_setScale:I = 0x2

.field static final blacklist TRANSACTION_showMagnificationButton:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IWindowMagnificationConnection;

    if-eqz v1, :cond_1

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IWindowMagnificationConnection;

    return-object v1

    .line 126
    :cond_1
    new-instance v1, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 167
    :pswitch_0
    const-string v0, "setConnectionCallback"

    return-object v0

    .line 163
    :pswitch_1
    const-string v0, "removeMagnificationButton"

    return-object v0

    .line 159
    :pswitch_2
    const-string v0, "showMagnificationButton"

    return-object v0

    .line 155
    :pswitch_3
    const-string v0, "moveWindowMagnifierToPosition"

    return-object v0

    .line 151
    :pswitch_4
    const-string v0, "moveWindowMagnifier"

    return-object v0

    .line 147
    :pswitch_5
    const-string v0, "disableWindowMagnification"

    return-object v0

    .line 143
    :pswitch_6
    const-string v0, "setScale"

    return-object v0

    .line 139
    :pswitch_7
    const-string v0, "enableWindowMagnification"

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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 492
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 178
    invoke-static {p1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    move-object/from16 v8, p0

    move/from16 v9, p1

    const-string v10, "android.view.accessibility.IWindowMagnificationConnection"

    .line 183
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v9, v11, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 184
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    move-object/from16 v12, p2

    .line 186
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 194
    move-object/from16 v13, p3

    packed-switch v9, :pswitch_data_1

    .line 290
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 190
    :pswitch_0
    move-object/from16 v13, p3

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return v11

    .line 283
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    move-result-object v0

    .line 284
    .local v0, "_arg0":Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v8, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V

    .line 286
    goto/16 :goto_1

    .line 275
    .end local v0    # "_arg0":Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v8, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->removeMagnificationButton(I)V

    .line 278
    goto/16 :goto_1

    .line 265
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->showMagnificationButton(II)V

    .line 270
    goto/16 :goto_1

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 255
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 257
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v3

    .line 258
    .local v3, "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 260
    goto :goto_1

    .line 239
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_arg3":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 243
    .restart local v1    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 244
    .restart local v2    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    .line 246
    goto :goto_1

    .line 229
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v1

    .line 232
    .local v1, "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 234
    goto :goto_1

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 222
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v8, v0, v1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setScale(IF)V

    .line 224
    goto :goto_1

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 201
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 203
    .local v15, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 205
    .local v16, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 207
    .local v17, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 209
    .local v18, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 211
    .local v19, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    move-result-object v20

    .line 212
    .local v20, "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 214
    nop

    .line 293
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":F
    .end local v16    # "_arg2":F
    .end local v17    # "_arg3":F
    .end local v18    # "_arg4":F
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
    :goto_1
    return v11

    nop

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
