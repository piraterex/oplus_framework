.class public abstract Landroid/view/contentcapture/IContentCaptureManager$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureManager.java"

# interfaces
.implements Landroid/view/contentcapture/IContentCaptureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_finishSession:I = 0x2

.field static final blacklist TRANSACTION_getContentCaptureConditions:I = 0x8

.field static final blacklist TRANSACTION_getServiceComponentName:I = 0x3

.field static final blacklist TRANSACTION_getServiceSettingsActivity:I = 0x7

.field static final blacklist TRANSACTION_isContentCaptureFeatureEnabled:I = 0x6

.field static final blacklist TRANSACTION_registerContentCaptureOptionsCallback:I = 0xc

.field static final blacklist TRANSACTION_removeData:I = 0x4

.field static final blacklist TRANSACTION_resetTemporaryService:I = 0x9

.field static final blacklist TRANSACTION_setDefaultServiceEnabled:I = 0xb

.field static final blacklist TRANSACTION_setTemporaryService:I = 0xa

.field static final blacklist TRANSACTION_shareData:I = 0x5

.field static final blacklist TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/contentcapture/IContentCaptureManager;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/view/contentcapture/IContentCaptureManager;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "registerContentCaptureOptionsCallback"

    return-object v0

    .line 158
    :pswitch_1
    const-string v0, "setDefaultServiceEnabled"

    return-object v0

    .line 154
    :pswitch_2
    const-string v0, "setTemporaryService"

    return-object v0

    .line 150
    :pswitch_3
    const-string v0, "resetTemporaryService"

    return-object v0

    .line 146
    :pswitch_4
    const-string v0, "getContentCaptureConditions"

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "getServiceSettingsActivity"

    return-object v0

    .line 138
    :pswitch_6
    const-string v0, "isContentCaptureFeatureEnabled"

    return-object v0

    .line 134
    :pswitch_7
    const-string v0, "shareData"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "removeData"

    return-object v0

    .line 126
    :pswitch_9
    const-string v0, "getServiceComponentName"

    return-object v0

    .line 122
    :pswitch_a
    const-string v0, "finishSession"

    return-object v0

    .line 118
    :pswitch_b
    const-string v0, "startSession"

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

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 529
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.view.contentcapture.IContentCaptureManager"

    .line 178
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 179
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 189
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 311
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 185
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v11

    .line 302
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureOptionsCallback;

    move-result-object v1

    .line 305
    .local v1, "_arg1":Landroid/view/contentcapture/IContentCaptureOptionsCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V

    .line 307
    goto/16 :goto_0

    .line 292
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/contentcapture/IContentCaptureOptionsCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 295
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setDefaultServiceEnabled(IZ)V

    .line 297
    goto/16 :goto_0

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    .line 287
    goto/16 :goto_0

    .line 272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->resetTemporaryService(I)V

    .line 275
    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 265
    .local v1, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 267
    goto/16 :goto_0

    .line 254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 255
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    .line 257
    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 247
    .restart local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 249
    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_8
    sget-object v0, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataShareRequest;

    .line 238
    .local v0, "_arg0":Landroid/view/contentcapture/DataShareRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;

    move-result-object v1

    .line 239
    .local v1, "_arg1":Landroid/view/contentcapture/IDataShareWriteAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V

    .line 241
    goto :goto_0

    .line 228
    .end local v0    # "_arg0":Landroid/view/contentcapture/DataShareRequest;
    .end local v1    # "_arg1":Landroid/view/contentcapture/IDataShareWriteAdapter;
    :pswitch_9
    sget-object v0, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataRemovalRequest;

    .line 229
    .local v0, "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 231
    goto :goto_0

    .line 220
    .end local v0    # "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 221
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 223
    goto :goto_0

    .line 212
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->finishSession(I)V

    .line 215
    goto :goto_0

    .line 194
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 196
    .local v13, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 198
    .local v14, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ComponentName;

    .line 200
    .local v15, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 202
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 204
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v18

    .line 205
    .local v18, "_arg5":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V

    .line 207
    nop

    .line 314
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Landroid/os/IBinder;
    .end local v15    # "_arg2":Landroid/content/ComponentName;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Lcom/android/internal/os/IResultReceiver;
    :goto_0
    return v11

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
