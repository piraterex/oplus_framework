.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final blacklist TRANSACTION_canScheduleExactAlarms:I = 0x8

.field static final blacklist TRANSACTION_cancelPoweroffAlarm:I = 0xb

.field static final greylist-max-o TRANSACTION_currentNetworkTimeMillis:I = 0x7

.field static final blacklist TRANSACTION_getConfigVersion:I = 0xa

.field static final greylist-max-o TRANSACTION_getNextAlarmClock:I = 0x6

.field static final greylist-max-o TRANSACTION_getNextWakeFromIdleTime:I = 0x5

.field static final blacklist TRANSACTION_hasScheduleExactAlarm:I = 0x9

.field static final greylist TRANSACTION_remove:I = 0x4

.field static final greylist TRANSACTION_set:I = 0x1

.field static final greylist-max-o TRANSACTION_setTime:I = 0x2

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const-string v0, "android.app.IAlarmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/app/IAlarmManager;

    return-object v1

    .line 84
    :cond_1
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "cancelPoweroffAlarm"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "getConfigVersion"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "hasScheduleExactAlarm"

    return-object v0

    .line 125
    :pswitch_3
    const-string v0, "canScheduleExactAlarms"

    return-object v0

    .line 121
    :pswitch_4
    const-string v0, "currentNetworkTimeMillis"

    return-object v0

    .line 117
    :pswitch_5
    const-string v0, "getNextAlarmClock"

    return-object v0

    .line 113
    :pswitch_6
    const-string v0, "getNextWakeFromIdleTime"

    return-object v0

    .line 109
    :pswitch_7
    const-string/jumbo v0, "remove"

    return-object v0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 101
    :pswitch_9
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 97
    :pswitch_a
    const-string/jumbo v0, "set"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 523
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Landroid/app/IAlarmManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IAlarmManager"

    .line 153
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 154
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 164
    packed-switch v14, :pswitch_data_1

    .line 289
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v10

    .line 281
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {v15, v0}, Landroid/app/IAlarmManager$Stub;->cancelPoweroffAlarm(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 273
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getConfigVersion()I

    move-result v0

    .line 274
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 262
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v15, v0, v1}, Landroid/app/IAlarmManager$Stub;->hasScheduleExactAlarm(Ljava/lang/String;I)Z

    move-result v2

    .line 267
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 269
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v15, v0}, Landroid/app/IAlarmManager$Stub;->canScheduleExactAlarms(Ljava/lang/String;)Z

    move-result v1

    .line 255
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 244
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->currentNetworkTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 235
    .end local v0    # "_result":J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v15, v0}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    .line 238
    .local v1, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 240
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getNextWakeFromIdleTime()J

    move-result-wide v0

    .line 228
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 217
    .end local v0    # "_result":J
    :pswitch_8
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 219
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v1

    .line 220
    .local v1, "_arg1":Landroid/app/IAlarmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v15, v0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 208
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Landroid/app/IAlarmListener;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {v15, v0}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_0

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 199
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v15, v0, v1}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v2

    .line 201
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    move/from16 v30, v10

    move-object/from16 v31, v11

    goto :goto_0

    .line 169
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 173
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 175
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 177
    .local v20, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 179
    .local v22, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 181
    .local v24, "_arg5":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/PendingIntent;

    .line 183
    .local v25, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v26

    .line 185
    .local v26, "_arg7":Landroid/app/IAlarmListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 187
    .local v27, "_arg8":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/WorkSource;

    .line 189
    .local v28, "_arg9":Landroid/os/WorkSource;
    sget-object v0, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 190
    .local v29, "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-wide/from16 v7, v22

    move/from16 v9, v24

    move/from16 v30, v10

    move-object/from16 v10, v25

    move-object/from16 v31, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Landroid/app/IAlarmManager$Stub;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    nop

    .line 292
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":J
    .end local v22    # "_arg4":J
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":Landroid/app/PendingIntent;
    .end local v26    # "_arg7":Landroid/app/IAlarmListener;
    .end local v27    # "_arg8":Ljava/lang/String;
    .end local v28    # "_arg9":Landroid/os/WorkSource;
    .end local v29    # "_arg10":Landroid/app/AlarmManager$AlarmClockInfo;
    :goto_0
    return v30

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
