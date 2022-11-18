.class public abstract Landroid/print/IPrintSpooler$Stub;
.super Landroid/os/Binder;
.source "IPrintSpooler.java"

# interfaces
.implements Landroid/print/IPrintSpooler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpooler$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpooler"

.field static final greylist-max-o TRANSACTION_clearCustomPrinterIconCache:I = 0xb

.field static final greylist-max-o TRANSACTION_createPrintJob:I = 0x4

.field static final greylist-max-o TRANSACTION_getCustomPrinterIcon:I = 0xa

.field static final greylist-max-o TRANSACTION_getPrintJobInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getPrintJobInfos:I = 0x2

.field static final greylist-max-o TRANSACTION_onCustomPrinterIconLoaded:I = 0x9

.field static final greylist-max-o TRANSACTION_pruneApprovedPrintServices:I = 0x10

.field static final greylist-max-o TRANSACTION_removeObsoletePrintJobs:I = 0x1

.field static final greylist-max-o TRANSACTION_setClient:I = 0xe

.field static final greylist-max-o TRANSACTION_setPrintJobCancelling:I = 0xf

.field static final greylist-max-o TRANSACTION_setPrintJobState:I = 0x5

.field static final greylist-max-o TRANSACTION_setPrintJobTag:I = 0xc

.field static final greylist-max-o TRANSACTION_setProgress:I = 0x6

.field static final greylist-max-o TRANSACTION_setStatus:I = 0x7

.field static final greylist-max-o TRANSACTION_setStatusRes:I = 0x8

.field static final greylist-max-o TRANSACTION_writePrintJobData:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.print.IPrintSpooler"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpooler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpooler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const-string v0, "android.print.IPrintSpooler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintSpooler;

    return-object v1

    .line 139
    :cond_1
    new-instance v1, Landroid/print/IPrintSpooler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpooler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 212
    :pswitch_0
    const-string/jumbo v0, "pruneApprovedPrintServices"

    return-object v0

    .line 208
    :pswitch_1
    const-string/jumbo v0, "setPrintJobCancelling"

    return-object v0

    .line 204
    :pswitch_2
    const-string/jumbo v0, "setClient"

    return-object v0

    .line 200
    :pswitch_3
    const-string/jumbo v0, "writePrintJobData"

    return-object v0

    .line 196
    :pswitch_4
    const-string/jumbo v0, "setPrintJobTag"

    return-object v0

    .line 192
    :pswitch_5
    const-string v0, "clearCustomPrinterIconCache"

    return-object v0

    .line 188
    :pswitch_6
    const-string v0, "getCustomPrinterIcon"

    return-object v0

    .line 184
    :pswitch_7
    const-string/jumbo v0, "onCustomPrinterIconLoaded"

    return-object v0

    .line 180
    :pswitch_8
    const-string/jumbo v0, "setStatusRes"

    return-object v0

    .line 176
    :pswitch_9
    const-string/jumbo v0, "setStatus"

    return-object v0

    .line 172
    :pswitch_a
    const-string/jumbo v0, "setProgress"

    return-object v0

    .line 168
    :pswitch_b
    const-string/jumbo v0, "setPrintJobState"

    return-object v0

    .line 164
    :pswitch_c
    const-string v0, "createPrintJob"

    return-object v0

    .line 160
    :pswitch_d
    const-string v0, "getPrintJobInfo"

    return-object v0

    .line 156
    :pswitch_e
    const-string v0, "getPrintJobInfos"

    return-object v0

    .line 152
    :pswitch_f
    const-string/jumbo v0, "removeObsoletePrintJobs"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 143
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 738
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 223
    invoke-static {p1}, Landroid/print/IPrintSpooler$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 227
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.print.IPrintSpooler"

    .line 228
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 229
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 239
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 420
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 235
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v10

    .line 413
    :pswitch_1
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->pruneApprovedPrintServices(Ljava/util/List;)V

    .line 416
    goto/16 :goto_0

    .line 403
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_2
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 405
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 406
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 408
    goto/16 :goto_0

    .line 395
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerClient;

    move-result-object v0

    .line 396
    .local v0, "_arg0":Landroid/print/IPrintSpoolerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->setClient(Landroid/print/IPrintSpoolerClient;)V

    .line 398
    goto/16 :goto_0

    .line 385
    .end local v0    # "_arg0":Landroid/print/IPrintSpoolerClient;
    :pswitch_4
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 387
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobId;

    .line 388
    .local v1, "_arg1":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    .line 390
    goto/16 :goto_0

    .line 371
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/print/PrintJobId;
    :pswitch_5
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 373
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v2

    .line 377
    .local v2, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintSpooler$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 380
    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    .end local v3    # "_arg3":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v0

    .line 363
    .local v0, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 366
    goto/16 :goto_0

    .line 349
    .end local v0    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v1    # "_arg1":I
    :pswitch_7
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 351
    .local v0, "_arg0":Landroid/print/PrinterId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 353
    .local v1, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {v6, v0, v1, v2}, Landroid/print/IPrintSpooler$Stub;->getCustomPrinterIcon(Landroid/print/PrinterId;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 356
    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    .end local v2    # "_arg2":I
    :pswitch_8
    sget-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    .line 337
    .restart local v0    # "_arg0":Landroid/print/PrinterId;
    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 339
    .local v1, "_arg1":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v2

    .line 341
    .local v2, "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintSpooler$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 344
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":Landroid/print/PrinterId;
    .end local v1    # "_arg1":Landroid/graphics/drawable/Icon;
    .end local v2    # "_arg2":Landroid/print/IPrintSpoolerCallbacks;
    .end local v3    # "_arg3":I
    :pswitch_9
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 325
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .local v1, "_arg1":I
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 328
    .local v2, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v6, v0, v1, v2}, Landroid/print/IPrintSpooler$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    .line 330
    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/CharSequence;
    :pswitch_a
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 315
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 316
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    .line 318
    goto/16 :goto_0

    .line 303
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_b
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 305
    .restart local v0    # "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 306
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v6, v0, v1}, Landroid/print/IPrintSpooler$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    .line 308
    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":F
    :pswitch_c
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/print/PrintJobId;

    .line 289
    .local v12, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 291
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 293
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v15

    .line 295
    .local v15, "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 296
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 298
    goto :goto_0

    .line 279
    .end local v12    # "_arg0":Landroid/print/PrintJobId;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/print/IPrintSpoolerCallbacks;
    .end local v16    # "_arg4":I
    :pswitch_d
    sget-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 280
    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v6, v0}, Landroid/print/IPrintSpooler$Stub;->createPrintJob(Landroid/print/PrintJobInfo;)V

    .line 282
    goto :goto_0

    .line 265
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :pswitch_e
    sget-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    .line 267
    .local v0, "_arg0":Landroid/print/PrintJobId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v1

    .line 269
    .local v1, "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;Landroid/print/IPrintSpoolerCallbacks;II)V

    .line 274
    goto :goto_0

    .line 249
    .end local v0    # "_arg0":Landroid/print/PrintJobId;
    .end local v1    # "_arg1":Landroid/print/IPrintSpoolerCallbacks;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;

    move-result-object v12

    .line 251
    .local v12, "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/ComponentName;

    .line 253
    .local v13, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 255
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 257
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 258
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/print/IPrintSpooler$Stub;->getPrintJobInfos(Landroid/print/IPrintSpoolerCallbacks;Landroid/content/ComponentName;III)V

    .line 260
    goto :goto_0

    .line 243
    .end local v12    # "_arg0":Landroid/print/IPrintSpoolerCallbacks;
    .end local v13    # "_arg1":Landroid/content/ComponentName;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/print/IPrintSpooler$Stub;->removeObsoletePrintJobs()V

    .line 244
    nop

    .line 423
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
