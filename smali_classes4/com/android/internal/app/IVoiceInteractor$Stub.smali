.class public abstract Lcom/android/internal/app/IVoiceInteractor$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractor"

.field static final blacklist TRANSACTION_notifyDirectActionsChanged:I = 0x7

.field static final blacklist TRANSACTION_setKillCallback:I = 0x8

.field static final greylist-max-o TRANSACTION_startAbortVoice:I = 0x4

.field static final greylist-max-o TRANSACTION_startCommand:I = 0x5

.field static final greylist-max-o TRANSACTION_startCompleteVoice:I = 0x3

.field static final greylist-max-o TRANSACTION_startConfirmation:I = 0x1

.field static final greylist-max-o TRANSACTION_startPickOption:I = 0x2

.field static final greylist-max-o TRANSACTION_supportsCommands:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractor;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_0
    const-string/jumbo v0, "setKillCallback"

    return-object v0

    .line 104
    :pswitch_1
    const-string/jumbo v0, "notifyDirectActionsChanged"

    return-object v0

    .line 100
    :pswitch_2
    const-string/jumbo v0, "supportsCommands"

    return-object v0

    .line 96
    :pswitch_3
    const-string/jumbo v0, "startCommand"

    return-object v0

    .line 92
    :pswitch_4
    const-string/jumbo v0, "startAbortVoice"

    return-object v0

    .line 88
    :pswitch_5
    const-string/jumbo v0, "startCompleteVoice"

    return-object v0

    .line 84
    :pswitch_6
    const-string/jumbo v0, "startPickOption"

    return-object v0

    .line 80
    :pswitch_7
    const-string/jumbo v0, "startConfirmation"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 442
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.app.IVoiceInteractor"

    .line 124
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 125
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 135
    packed-switch v7, :pswitch_data_1

    .line 253
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 131
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return v11

    .line 245
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 246
    .local v0, "_arg0":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {v6, v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->setKillCallback(Landroid/os/ICancellationSignal;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":Landroid/os/ICancellationSignal;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 237
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->notifyDirectActionsChanged(ILandroid/os/IBinder;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_0

    .line 222
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v2

    .line 227
    .local v2, "_result":[Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 229
    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":[Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v1

    .line 210
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 213
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCommand(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    .line 215
    .local v4, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 217
    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v2, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Prompt;

    .line 196
    .local v2, "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 197
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    .line 199
    .restart local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 201
    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v2    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v1

    .line 178
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v2, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Prompt;

    .line 180
    .restart local v2    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 181
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startCompleteVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    .line 183
    .restart local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 185
    goto :goto_0

    .line 156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v2    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v13

    .line 160
    .local v13, "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/VoiceInteractor$Prompt;

    .line 162
    .local v14, "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 164
    .local v15, "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 165
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v0

    .line 167
    .local v0, "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 169
    goto :goto_0

    .line 140
    .end local v0    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v14    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v15    # "_arg3":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractorCallback;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    sget-object v2, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Prompt;

    .line 146
    .restart local v2    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 147
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/app/IVoiceInteractor$Stub;->startConfirmation(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v4

    .line 149
    .restart local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 151
    nop

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractorCallback;
    .end local v2    # "_arg2":Landroid/app/VoiceInteractor$Prompt;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Lcom/android/internal/app/IVoiceInteractorRequest;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
