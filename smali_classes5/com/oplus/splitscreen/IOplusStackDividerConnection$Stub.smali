.class public abstract Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;
.super Landroid/os/Binder;
.source "IOplusStackDividerConnection.java"

# interfaces
.implements Lcom/oplus/splitscreen/IOplusStackDividerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/IOplusStackDividerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dismissSplitScreenMode:I = 0x2

.field static final blacklist TRANSACTION_exitSplitScreen:I = 0xc

.field static final blacklist TRANSACTION_moveTaskAndIntentActivityToSplitScreen:I = 0xb

.field static final blacklist TRANSACTION_moveTaskToSplitStage:I = 0x6

.field static final blacklist TRANSACTION_moveTasksToSplitStages:I = 0x5

.field static final blacklist TRANSACTION_moveToSplitScreen:I = 0x8

.field static final blacklist TRANSACTION_needInterceptStartForSplitScreen:I = 0x4

.field static final blacklist TRANSACTION_setDividerShow:I = 0x7

.field static final blacklist TRANSACTION_showNotSupportSplitWarn:I = 0x9

.field static final blacklist TRANSACTION_startPairIntent:I = 0x3

.field static final blacklist TRANSACTION_startTask:I = 0x1

.field static final blacklist TRANSACTION_toggleSplitScreen:I = 0xa


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.oplus.splitscreen.IOplusStackDividerConnection"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/splitscreen/IOplusStackDividerConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "com.oplus.splitscreen.IOplusStackDividerConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "exitSplitScreen"

    return-object v0

    .line 126
    :pswitch_1
    const-string v0, "moveTaskAndIntentActivityToSplitScreen"

    return-object v0

    .line 122
    :pswitch_2
    const-string v0, "toggleSplitScreen"

    return-object v0

    .line 118
    :pswitch_3
    const-string v0, "showNotSupportSplitWarn"

    return-object v0

    .line 114
    :pswitch_4
    const-string v0, "moveToSplitScreen"

    return-object v0

    .line 110
    :pswitch_5
    const-string v0, "setDividerShow"

    return-object v0

    .line 106
    :pswitch_6
    const-string v0, "moveTaskToSplitStage"

    return-object v0

    .line 102
    :pswitch_7
    const-string v0, "moveTasksToSplitStages"

    return-object v0

    .line 98
    :pswitch_8
    const-string v0, "needInterceptStartForSplitScreen"

    return-object v0

    .line 94
    :pswitch_9
    const-string v0, "startPairIntent"

    return-object v0

    .line 90
    :pswitch_a
    const-string v0, "dismissSplitScreenMode"

    return-object v0

    .line 86
    :pswitch_b
    const-string v0, "startTask"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 570
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 141
    invoke-static {p1}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.oplus.splitscreen.IOplusStackDividerConnection"

    .line 146
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 147
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 157
    packed-switch v11, :pswitch_data_1

    .line 320
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 153
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v15

    .line 310
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 313
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {v10, v0, v1}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->exitSplitScreen(II)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 287
    .local v16, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/hardware/HardwareBuffer;

    .line 289
    .local v17, "_arg1":Landroid/hardware/HardwareBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 291
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 293
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 295
    .local v20, "_arg4":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 297
    .local v21, "_arg5":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/Intent;

    .line 299
    .local v22, "_arg6":Landroid/content/Intent;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Bundle;

    .line 301
    .local v23, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 302
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->moveTaskAndIntentActivityToSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/hardware/HardwareBuffer;IZILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto/16 :goto_0

    .line 276
    .end local v16    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v17    # "_arg1":Landroid/hardware/HardwareBuffer;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Landroid/app/PendingIntent;
    .end local v22    # "_arg6":Landroid/content/Intent;
    .end local v23    # "_arg7":Landroid/os/Bundle;
    .end local v24    # "_arg8":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v10, v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->toggleSplitScreen(I)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":I
    :pswitch_4
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 268
    .local v0, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v10, v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->showNotSupportSplitWarn(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 250
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 252
    .local v6, "_arg0":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 254
    .local v7, "_arg1":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Intent;

    .line 256
    .local v8, "_arg2":Landroid/content/Intent;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 258
    .local v9, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 259
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_0

    .line 241
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/app/PendingIntent;
    .end local v8    # "_arg2":Landroid/content/Intent;
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 242
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {v10, v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->setDividerShow(Z)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 233
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v10, v0, v1}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->moveTaskToSplitStage(IZ)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->moveTasksToSplitStages(IIII)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 206
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v10, v0, v1, v2}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->needInterceptStartForSplitScreen(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 208
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 210
    goto :goto_0

    .line 184
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_a
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Intent;

    .line 186
    .local v6, "_arg0":Landroid/content/Intent;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Intent;

    .line 188
    .local v7, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 190
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 192
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 193
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IILandroid/os/Bundle;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_0

    .line 175
    .end local v6    # "_arg0":Landroid/content/Intent;
    .end local v7    # "_arg1":Landroid/content/Intent;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v10, v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->dismissSplitScreenMode(I)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_0

    .line 162
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 167
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v10, v0, v1, v2}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->startTask(IILandroid/os/Bundle;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    nop

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :goto_0
    return v15

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
