.class public abstract Lcom/android/internal/app/procstats/IProcessStats$Stub;
.super Landroid/os/Binder;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/procstats/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/IProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCommittedStats:I = 0x4

.field static final blacklist TRANSACTION_getCommittedStatsMerged:I = 0x5

.field static final blacklist TRANSACTION_getCurrentMemoryState:I = 0x3

.field static final blacklist TRANSACTION_getCurrentStats:I = 0x1

.field static final blacklist TRANSACTION_getMinAssociationDumpDuration:I = 0x6

.field static final blacklist TRANSACTION_getStatsOverTime:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/procstats/IProcessStats;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/procstats/IProcessStats;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "getMinAssociationDumpDuration"

    return-object v0

    .line 105
    :pswitch_1
    const-string v0, "getCommittedStatsMerged"

    return-object v0

    .line 101
    :pswitch_2
    const-string v0, "getCommittedStats"

    return-object v0

    .line 97
    :pswitch_3
    const-string v0, "getCurrentMemoryState"

    return-object v0

    .line 93
    :pswitch_4
    const-string v0, "getStatsOverTime"

    return-object v0

    .line 89
    :pswitch_5
    const-string v0, "getCurrentStats"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 373
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.app.procstats.IProcessStats"

    .line 125
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 126
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    move-object/from16 v12, p2

    .line 128
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 136
    packed-switch v8, :pswitch_data_1

    .line 212
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 132
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v11

    .line 205
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getMinAssociationDumpDuration()J

    move-result-wide v0

    .line 206
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    goto/16 :goto_1

    .line 186
    .end local v0    # "_result":J
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 188
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 190
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 192
    .local v16, "_arg2":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 194
    .local v6, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    move-object v5, v0

    .line 195
    .local v5, "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v17, v5

    .end local v5    # "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    .local v17, "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    move-object v5, v6

    move-object v11, v6

    .end local v6    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .local v11, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v0

    .line 197
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 200
    move-object/from16 v2, v17

    const/4 v3, 0x1

    .end local v17    # "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    .local v2, "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 201
    goto :goto_1

    .line 169
    .end local v0    # "_result":J
    .end local v2    # "_arg4":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 171
    .restart local v13    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 175
    .local v11, "_arg2":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 176
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v6

    move v4, v11

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStats(JIZLjava/util/List;)J

    move-result-wide v0

    .line 178
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 181
    goto :goto_1

    .line 161
    .end local v0    # "_result":J
    .end local v6    # "_arg1":I
    .end local v11    # "_arg2":Z
    .end local v13    # "_arg0":J
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentMemoryState()I

    move-result v0

    .line 162
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    goto :goto_1

    .line 152
    .end local v0    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 153
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 155
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 157
    goto :goto_1

    .line 141
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {v7, v0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats(Ljava/util/List;)[B

    move-result-object v1

    .line 144
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    nop

    .line 215
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .end local v1    # "_result":[B
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
