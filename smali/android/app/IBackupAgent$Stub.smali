.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final greylist-max-o TRANSACTION_doBackup:I = 0x1

.field static final greylist-max-o TRANSACTION_doFullBackup:I = 0x4

.field static final greylist-max-o TRANSACTION_doMeasureFullBackup:I = 0x5

.field static final greylist-max-o TRANSACTION_doQuotaExceeded:I = 0x6

.field static final greylist-max-o TRANSACTION_doRestore:I = 0x2

.field static final greylist-max-o TRANSACTION_doRestoreFile:I = 0x7

.field static final greylist-max-o TRANSACTION_doRestoreFinished:I = 0x8

.field static final blacklist TRANSACTION_doRestoreWithExcludedKeys:I = 0x3

.field static final greylist-max-o TRANSACTION_fail:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 190
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    const-string v0, "android.app.IBackupAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_1

    .line 203
    move-object v1, v0

    check-cast v1, Landroid/app/IBackupAgent;

    return-object v1

    .line 205
    :cond_1
    new-instance v1, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 214
    packed-switch p0, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_0
    const-string v0, "fail"

    return-object v0

    .line 246
    :pswitch_1
    const-string v0, "doRestoreFinished"

    return-object v0

    .line 242
    :pswitch_2
    const-string v0, "doRestoreFile"

    return-object v0

    .line 238
    :pswitch_3
    const-string v0, "doQuotaExceeded"

    return-object v0

    .line 234
    :pswitch_4
    const-string v0, "doMeasureFullBackup"

    return-object v0

    .line 230
    :pswitch_5
    const-string v0, "doFullBackup"

    return-object v0

    .line 226
    :pswitch_6
    const-string v0, "doRestoreWithExcludedKeys"

    return-object v0

    .line 222
    :pswitch_7
    const-string v0, "doRestore"

    return-object v0

    .line 218
    :pswitch_8
    const-string v0, "doBackup"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 209
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 726
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 261
    invoke-static {p1}, Landroid/app/IBackupAgent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "android.app.IBackupAgent"

    .line 266
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 267
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 277
    move-object/from16 v9, p3

    packed-switch v14, :pswitch_data_1

    .line 417
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 273
    :pswitch_0
    move-object/from16 v9, p3

    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return v11

    .line 410
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v13, v0}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    .line 413
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 400
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 403
    .local v1, "_arg1":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v13, v0, v1}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 405
    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    .line 376
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/backup/IBackupManager;
    :pswitch_3
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/ParcelFileDescriptor;

    .line 378
    .local v16, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 380
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 382
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 384
    .local v20, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 386
    .local v21, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 388
    .local v22, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 390
    .local v24, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 392
    .local v26, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v27

    .line 393
    .local v27, "_arg8":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v7, v22

    move-wide/from16 v9, v24

    move/from16 v28, v11

    move/from16 v11, v26

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 395
    goto/16 :goto_0

    .line 364
    .end local v16    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg5":J
    .end local v24    # "_arg6":J
    .end local v26    # "_arg7":I
    .end local v27    # "_arg8":Landroid/app/backup/IBackupManager;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 366
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 368
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v10

    .line 369
    .local v10, "_arg2":Landroid/app/backup/IBackupCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    .line 371
    goto/16 :goto_0

    .line 350
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Landroid/app/backup/IBackupCallback;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 352
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 354
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 356
    .local v9, "_arg2":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 357
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 359
    goto/16 :goto_0

    .line 334
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/app/backup/IBackupManager;
    .end local v10    # "_arg3":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 336
    .local v7, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 338
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 340
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v11

    .line 342
    .local v11, "_arg3":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 343
    .local v12, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 345
    goto/16 :goto_0

    .line 316
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":I
    .end local v11    # "_arg3":Landroid/app/backup/IBackupManager;
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_7
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 318
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 320
    .local v9, "_arg1":J
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    .line 322
    .local v11, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 324
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v16

    .line 326
    .local v16, "_arg4":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 327
    .local v17, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move-object v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 329
    goto/16 :goto_0

    .line 300
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg1":J
    .end local v11    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg4":Landroid/app/backup/IBackupManager;
    .end local v17    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_8
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .line 302
    .restart local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 304
    .local v8, "_arg1":J
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 306
    .local v10, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 308
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v12

    .line 309
    .local v12, "_arg4":Landroid/app/backup/IBackupManager;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 311
    goto :goto_0

    .line 282
    .end local v7    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "_arg1":J
    .end local v10    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "_arg3":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_9
    move/from16 v28, v11

    move-object/from16 v29, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 284
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 286
    .local v9, "_arg1":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 288
    .restart local v10    # "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 290
    .local v11, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v16

    .line 292
    .local v16, "_arg4":Landroid/app/backup/IBackupCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 293
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-wide v4, v11

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 295
    nop

    .line 420
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "_arg3":J
    .end local v16    # "_arg4":Landroid/app/backup/IBackupCallback;
    .end local v17    # "_arg5":I
    :goto_0
    return v28

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
