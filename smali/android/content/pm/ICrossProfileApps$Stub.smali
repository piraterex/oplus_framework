.class public abstract Landroid/content/pm/ICrossProfileApps$Stub;
.super Landroid/os/Binder;
.source "ICrossProfileApps.java"

# interfaces
.implements Landroid/content/pm/ICrossProfileApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ICrossProfileApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ICrossProfileApps$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ICrossProfileApps"

.field static final blacklist TRANSACTION_canConfigureInteractAcrossProfiles:I = 0x7

.field static final blacklist TRANSACTION_canInteractAcrossProfiles:I = 0x4

.field static final blacklist TRANSACTION_canRequestInteractAcrossProfiles:I = 0x5

.field static final blacklist TRANSACTION_canUserAttemptToConfigureInteractAcrossProfiles:I = 0x8

.field static final blacklist TRANSACTION_clearInteractAcrossProfilesAppOps:I = 0xa

.field static final greylist-max-o TRANSACTION_getTargetUserProfiles:I = 0x3

.field static final blacklist TRANSACTION_resetInteractAcrossProfilesAppOps:I = 0x9

.field static final blacklist TRANSACTION_setInteractAcrossProfilesAppOp:I = 0x6

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x1

.field static final blacklist TRANSACTION_startActivityAsUserByIntent:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/ICrossProfileApps;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "android.content.pm.ICrossProfileApps"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/ICrossProfileApps;

    if-eqz v1, :cond_1

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ICrossProfileApps;

    return-object v1

    .line 72
    :cond_1
    new-instance v1, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ICrossProfileApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 121
    :pswitch_0
    const-string v0, "clearInteractAcrossProfilesAppOps"

    return-object v0

    .line 117
    :pswitch_1
    const-string/jumbo v0, "resetInteractAcrossProfilesAppOps"

    return-object v0

    .line 113
    :pswitch_2
    const-string v0, "canUserAttemptToConfigureInteractAcrossProfiles"

    return-object v0

    .line 109
    :pswitch_3
    const-string v0, "canConfigureInteractAcrossProfiles"

    return-object v0

    .line 105
    :pswitch_4
    const-string/jumbo v0, "setInteractAcrossProfilesAppOp"

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "canRequestInteractAcrossProfiles"

    return-object v0

    .line 97
    :pswitch_6
    const-string v0, "canInteractAcrossProfiles"

    return-object v0

    .line 93
    :pswitch_7
    const-string v0, "getTargetUserProfiles"

    return-object v0

    .line 89
    :pswitch_8
    const-string/jumbo v0, "startActivityAsUserByIntent"

    return-object v0

    .line 85
    :pswitch_9
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 485
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 132
    invoke-static {p1}, Landroid/content/pm/ICrossProfileApps$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.content.pm.ICrossProfileApps"

    .line 137
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 138
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 148
    packed-switch v10, :pswitch_data_1

    .line 272
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 144
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return v14

    .line 266
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ICrossProfileApps$Stub;->clearInteractAcrossProfilesAppOps()V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_0

    .line 258
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 259
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->resetInteractAcrossProfilesAppOps(Ljava/util/List;)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v1

    .line 251
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 253
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v1

    .line 241
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {v9, v0, v1}, Landroid/content/pm/ICrossProfileApps$Stub;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->canRequestInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->canInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v1

    .line 210
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {v9, v0}, Landroid/content/pm/ICrossProfileApps$Stub;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 202
    goto/16 :goto_0

    .line 176
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    .line 178
    .local v8, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 180
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 184
    .local v17, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 186
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 188
    .local v19, "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 189
    .local v20, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 153
    .end local v8    # "_arg0":Landroid/app/IApplicationThread;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Landroid/content/Intent;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Landroid/os/IBinder;
    .end local v20    # "_arg6":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    .line 155
    .local v15, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 157
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 159
    .local v17, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/ComponentName;

    .line 161
    .local v18, "_arg3":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 163
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 165
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 167
    .local v21, "_arg6":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 168
    .local v22, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/ICrossProfileApps$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    nop

    .line 275
    .end local v15    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/ComponentName;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Landroid/os/IBinder;
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
