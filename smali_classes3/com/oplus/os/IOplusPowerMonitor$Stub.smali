.class public abstract Lcom/oplus/os/IOplusPowerMonitor$Stub;
.super Landroid/os/Binder;
.source "IOplusPowerMonitor.java"

# interfaces
.implements Lcom/oplus/os/IOplusPowerMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/IOplusPowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/IOplusPowerMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireSuspendBlocker:I = 0x4

.field static final blacklist TRANSACTION_getAlarmWakeUpInfo:I = 0xa

.field static final blacklist TRANSACTION_getRpmMasterStatsFilePath:I = 0x7

.field static final blacklist TRANSACTION_getRpmStatsFilePath:I = 0x6

.field static final blacklist TRANSACTION_getSubSystem:I = 0x12

.field static final blacklist TRANSACTION_getSuspendStats:I = 0x10

.field static final blacklist TRANSACTION_getWakeLockInfo:I = 0xd

.field static final blacklist TRANSACTION_getWakeLockInfoFileDescriptor:I = 0x13

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0xe

.field static final blacklist TRANSACTION_getWakeupStats:I = 0xf

.field static final blacklist TRANSACTION_getWakeups:I = 0x11

.field static final blacklist TRANSACTION_recordAlarmWakeupEvent:I = 0x1

.field static final blacklist TRANSACTION_recordAppWakeupEvent:I = 0x2

.field static final blacklist TRANSACTION_recordAppWakeupInfoEvent:I = 0x9

.field static final blacklist TRANSACTION_recordWakeLockAcquireEvent:I = 0xb

.field static final blacklist TRANSACTION_recordWakeLockReleaseEvent:I = 0xc

.field static final blacklist TRANSACTION_releaseSuspendBlocker:I = 0x5

.field static final blacklist TRANSACTION_resetWakeupEventRecords:I = 0x3

.field static final blacklist TRANSACTION_scheduleRpmUpdate:I = 0x8


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "com.oplus.os.IOplusPowerMonitor"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusPowerMonitor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    const-string v0, "com.oplus.os.IOplusPowerMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/os/IOplusPowerMonitor;

    if-eqz v1, :cond_1

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/oplus/os/IOplusPowerMonitor;

    return-object v1

    .line 109
    :cond_1
    new-instance v1, Lcom/oplus/os/IOplusPowerMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 118
    packed-switch p0, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 194
    :pswitch_0
    const-string/jumbo v0, "getWakeLockInfoFileDescriptor"

    return-object v0

    .line 190
    :pswitch_1
    const-string v0, "getSubSystem"

    return-object v0

    .line 186
    :pswitch_2
    const-string/jumbo v0, "getWakeups"

    return-object v0

    .line 182
    :pswitch_3
    const-string/jumbo v0, "getSuspendStats"

    return-object v0

    .line 178
    :pswitch_4
    const-string/jumbo v0, "getWakeupStats"

    return-object v0

    .line 174
    :pswitch_5
    const-string/jumbo v0, "getWakeLockStats"

    return-object v0

    .line 170
    :pswitch_6
    const-string/jumbo v0, "getWakeLockInfo"

    return-object v0

    .line 166
    :pswitch_7
    const-string/jumbo v0, "recordWakeLockReleaseEvent"

    return-object v0

    .line 162
    :pswitch_8
    const-string/jumbo v0, "recordWakeLockAcquireEvent"

    return-object v0

    .line 158
    :pswitch_9
    const-string v0, "getAlarmWakeUpInfo"

    return-object v0

    .line 154
    :pswitch_a
    const-string/jumbo v0, "recordAppWakeupInfoEvent"

    return-object v0

    .line 150
    :pswitch_b
    const-string/jumbo v0, "scheduleRpmUpdate"

    return-object v0

    .line 146
    :pswitch_c
    const-string v0, "getRpmMasterStatsFilePath"

    return-object v0

    .line 142
    :pswitch_d
    const-string v0, "getRpmStatsFilePath"

    return-object v0

    .line 138
    :pswitch_e
    const-string/jumbo v0, "releaseSuspendBlocker"

    return-object v0

    .line 134
    :pswitch_f
    const-string v0, "acquireSuspendBlocker"

    return-object v0

    .line 130
    :pswitch_10
    const-string/jumbo v0, "resetWakeupEventRecords"

    return-object v0

    .line 126
    :pswitch_11
    const-string/jumbo v0, "recordAppWakeupEvent"

    return-object v0

    .line 122
    :pswitch_12
    const-string/jumbo v0, "recordAlarmWakeupEvent"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 113
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 710
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 205
    invoke-static {p1}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const-string v0, "com.oplus.os.IOplusPowerMonitor"

    .line 210
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 211
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 221
    packed-switch p1, :pswitch_data_1

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 217
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v1

    .line 367
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 369
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 370
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getWakeLockInfoFileDescriptor(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 372
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 374
    goto/16 :goto_0

    .line 359
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getSubSystem()[Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 362
    goto/16 :goto_0

    .line 352
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getWakeups()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    goto/16 :goto_0

    .line 345
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getSuspendStats()Lcom/oplus/app/SuspendInfo;

    move-result-object v2

    .line 346
    .local v2, "_result":Lcom/oplus/app/SuspendInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 348
    goto/16 :goto_0

    .line 338
    .end local v2    # "_result":Lcom/oplus/app/SuspendInfo;
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getWakeupStats()[Lcom/oplus/app/KernelWakeupInfo;

    move-result-object v2

    .line 339
    .local v2, "_result":[Lcom/oplus/app/KernelWakeupInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 341
    goto/16 :goto_0

    .line 331
    .end local v2    # "_result":[Lcom/oplus/app/KernelWakeupInfo;
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getWakeLockStats()[Lcom/oplus/app/KernelWakeLockInfo;

    move-result-object v2

    .line 332
    .local v2, "_result":[Lcom/oplus/app/KernelWakeLockInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 334
    goto/16 :goto_0

    .line 320
    .end local v2    # "_result":[Lcom/oplus/app/KernelWakeLockInfo;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 322
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 323
    .restart local v4    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getWakeLockInfo(JJ)Ljava/util/List;

    move-result-object v6

    .line 325
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusWakeLockInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusWakeLockInfo;>;"
    :pswitch_8
    sget-object v2, Lcom/oplus/app/OplusWakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusWakeLockInfo;

    .line 313
    .local v2, "_arg0":Lcom/oplus/app/OplusWakeLockInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->recordWakeLockReleaseEvent(Lcom/oplus/app/OplusWakeLockInfo;)V

    .line 315
    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":Lcom/oplus/app/OplusWakeLockInfo;
    :pswitch_9
    sget-object v2, Lcom/oplus/app/OplusWakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusWakeLockInfo;

    .line 305
    .restart local v2    # "_arg0":Lcom/oplus/app/OplusWakeLockInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->recordWakeLockAcquireEvent(Lcom/oplus/app/OplusWakeLockInfo;)V

    .line 307
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":Lcom/oplus/app/OplusWakeLockInfo;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 294
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 295
    .restart local v4    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getAlarmWakeUpInfo(JJ)Ljava/util/List;

    move-result-object v6

    .line 297
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAlarmInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 299
    goto :goto_0

    .line 284
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":J
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAlarmInfo;>;"
    :pswitch_b
    sget-object v2, Lcom/oplus/app/OplusAlarmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAlarmInfo;

    .line 285
    .local v2, "_arg0":Lcom/oplus/app/OplusAlarmInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->recordAppWakeupInfoEvent(Lcom/oplus/app/OplusAlarmInfo;)V

    .line 287
    goto :goto_0

    .line 276
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAlarmInfo;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 277
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->scheduleRpmUpdate(Z)V

    .line 279
    goto :goto_0

    .line 268
    .end local v2    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getRpmMasterStatsFilePath()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    goto :goto_0

    .line 261
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->getRpmStatsFilePath()Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    goto :goto_0

    .line 254
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->releaseSuspendBlocker(Ljava/lang/String;)V

    .line 257
    goto :goto_0

    .line 246
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->acquireSuspendBlocker(Ljava/lang/String;)V

    .line 249
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->resetWakeupEventRecords()V

    .line 241
    goto :goto_0

    .line 231
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->recordAppWakeupEvent(ILjava/lang/String;)V

    .line 236
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Lcom/oplus/os/IOplusPowerMonitor$Stub;->recordAlarmWakeupEvent()V

    .line 226
    nop

    .line 381
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
