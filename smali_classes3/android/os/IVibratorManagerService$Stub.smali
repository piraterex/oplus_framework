.class public abstract Landroid/os/IVibratorManagerService$Stub;
.super Landroid/os/Binder;
.source "IVibratorManagerService.java"

# interfaces
.implements Landroid/os/IVibratorManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelVibrate:I = 0x8

.field static final blacklist TRANSACTION_getActivityComponentName:I = 0x9

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x1

.field static final blacklist TRANSACTION_getVibratorInfo:I = 0x2

.field static final blacklist TRANSACTION_isVibrating:I = 0x3

.field static final blacklist TRANSACTION_registerVibratorStateListener:I = 0x4

.field static final blacklist TRANSACTION_setAlwaysOnEffect:I = 0x6

.field static final blacklist TRANSACTION_unregisterVibratorStateListener:I = 0x5

.field static final blacklist TRANSACTION_vibrate:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.os.IVibratorManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.os.IVibratorManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorManagerService;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/os/IVibratorManagerService;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/os/IVibratorManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_0
    const-string v0, "getActivityComponentName"

    return-object v0

    .line 114
    :pswitch_1
    const-string v0, "cancelVibrate"

    return-object v0

    .line 110
    :pswitch_2
    const-string/jumbo v0, "vibrate"

    return-object v0

    .line 106
    :pswitch_3
    const-string/jumbo v0, "setAlwaysOnEffect"

    return-object v0

    .line 102
    :pswitch_4
    const-string/jumbo v0, "unregisterVibratorStateListener"

    return-object v0

    .line 98
    :pswitch_5
    const-string/jumbo v0, "registerVibratorStateListener"

    return-object v0

    .line 94
    :pswitch_6
    const-string/jumbo v0, "isVibrating"

    return-object v0

    .line 90
    :pswitch_7
    const-string/jumbo v0, "getVibratorInfo"

    return-object v0

    .line 86
    :pswitch_8
    const-string/jumbo v0, "getVibratorIds"

    return-object v0

    nop

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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 456
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Landroid/os/IVibratorManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 133
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IVibratorManagerService"

    .line 134
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 135
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 145
    packed-switch v8, :pswitch_data_1

    .line 255
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 141
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v12

    .line 248
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorManagerService$Stub;->getActivityComponentName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    goto/16 :goto_0

    .line 238
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 241
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 221
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 223
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/CombinedVibration;

    .line 225
    .local v15, "_arg2":Landroid/os/CombinedVibration;
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/VibrationAttributes;

    .line 227
    .local v16, "_arg3":Landroid/os/VibrationAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 229
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 230
    .local v18, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVibratorManagerService$Stub;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_0

    .line 201
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/os/CombinedVibration;
    .end local v16    # "_arg3":Landroid/os/VibrationAttributes;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 203
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 207
    .local v14, "_arg2":I
    sget-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/CombinedVibration;

    .line 209
    .local v15, "_arg3":Landroid/os/CombinedVibration;
    sget-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/VibrationAttributes;

    .line 210
    .local v16, "_arg4":Landroid/os/VibrationAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVibratorManagerService$Stub;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v0

    .line 212
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_0

    .line 189
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/CombinedVibration;
    .end local v16    # "_arg4":Landroid/os/VibrationAttributes;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 191
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 192
    .local v1, "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 194
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 196
    goto :goto_0

    .line 177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object v1

    .line 180
    .restart local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {v7, v0, v1}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    .line 182
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    goto :goto_0

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVibratorStateListener;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {v7, v0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating(I)Z

    move-result v1

    .line 170
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 172
    goto :goto_0

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {v7, v0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorInfo(I)Landroid/os/VibratorInfo;

    move-result-object v1

    .line 160
    .local v1, "_result":Landroid/os/VibratorInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 162
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/VibratorInfo;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorManagerService$Stub;->getVibratorIds()[I

    move-result-object v0

    .line 150
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 152
    nop

    .line 258
    .end local v0    # "_result":[I
    :goto_0
    return v12

    nop

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
