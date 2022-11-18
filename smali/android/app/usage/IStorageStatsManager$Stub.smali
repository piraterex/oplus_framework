.class public abstract Landroid/app/usage/IStorageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IStorageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IStorageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IStorageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IStorageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IStorageStatsManager"

.field static final greylist-max-o TRANSACTION_getCacheBytes:I = 0x5

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x6

.field static final greylist-max-o TRANSACTION_getFreeBytes:I = 0x4

.field static final greylist-max-o TRANSACTION_getTotalBytes:I = 0x3

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_isReservedSupported:I = 0x2

.field static final blacklist TRANSACTION_queryCratesForPackage:I = 0xb

.field static final blacklist TRANSACTION_queryCratesForUid:I = 0xc

.field static final blacklist TRANSACTION_queryCratesForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_queryExternalStatsForUser:I = 0xa

.field static final greylist-max-o TRANSACTION_queryStatsForPackage:I = 0x7

.field static final greylist-max-o TRANSACTION_queryStatsForUid:I = 0x8

.field static final greylist-max-o TRANSACTION_queryStatsForUser:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.app.usage.IStorageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IStorageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "android.app.usage.IStorageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/usage/IStorageStatsManager;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/app/usage/IStorageStatsManager;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IStorageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 150
    :pswitch_0
    const-string/jumbo v0, "queryCratesForUser"

    return-object v0

    .line 146
    :pswitch_1
    const-string/jumbo v0, "queryCratesForUid"

    return-object v0

    .line 142
    :pswitch_2
    const-string/jumbo v0, "queryCratesForPackage"

    return-object v0

    .line 138
    :pswitch_3
    const-string/jumbo v0, "queryExternalStatsForUser"

    return-object v0

    .line 134
    :pswitch_4
    const-string/jumbo v0, "queryStatsForUser"

    return-object v0

    .line 130
    :pswitch_5
    const-string/jumbo v0, "queryStatsForUid"

    return-object v0

    .line 126
    :pswitch_6
    const-string/jumbo v0, "queryStatsForPackage"

    return-object v0

    .line 122
    :pswitch_7
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    .line 118
    :pswitch_8
    const-string v0, "getCacheBytes"

    return-object v0

    .line 114
    :pswitch_9
    const-string v0, "getFreeBytes"

    return-object v0

    .line 110
    :pswitch_a
    const-string v0, "getTotalBytes"

    return-object v0

    .line 106
    :pswitch_b
    const-string v0, "isReservedSupported"

    return-object v0

    .line 102
    :pswitch_c
    const-string v0, "isQuotaSupported"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 652
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 161
    invoke-static {p1}, Landroid/app/usage/IStorageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 165
    const-string v0, "android.app.usage.IStorageStatsManager"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 177
    packed-switch p1, :pswitch_data_1

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 344
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 351
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 353
    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 337
    .restart local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 320
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/usage/IStorageStatsManager$Stub;->queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 323
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 325
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v5

    .line 307
    .local v5, "_result":Landroid/app/usage/ExternalStorageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    goto/16 :goto_0

    .line 286
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/usage/ExternalStorageStats;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v5

    .line 293
    .local v5, "_result":Landroid/app/usage/StorageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/usage/StorageStats;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v5

    .line 279
    .restart local v5    # "_result":Landroid/app/usage/StorageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 281
    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/app/usage/StorageStats;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 262
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/usage/IStorageStatsManager$Stub;->queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    move-result-object v6

    .line 265
    .local v6, "_result":Landroid/app/usage/StorageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 267
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/app/usage/StorageStats;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    .line 249
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    goto :goto_0

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":J
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/IStorageStatsManager$Stub;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 235
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/IStorageStatsManager$Stub;->getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 223
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    goto :goto_0

    .line 206
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/IStorageStatsManager$Stub;->getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 211
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":J
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/IStorageStatsManager$Stub;->isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 199
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_0

    .line 182
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/app/usage/IStorageStatsManager$Stub;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 187
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    nop

    .line 360
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
