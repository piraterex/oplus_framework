.class public abstract Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSoundTriggerSession.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDspModuleProperties:I = 0x1

.field static final blacklist TRANSACTION_getParameter:I = 0x5

.field static final blacklist TRANSACTION_queryParameter:I = 0x6

.field static final blacklist TRANSACTION_setParameter:I = 0x4

.field static final blacklist TRANSACTION_startRecognition:I = 0x2

.field static final blacklist TRANSACTION_stopRecognition:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 107
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object v1

    .line 122
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 131
    packed-switch p0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 155
    :pswitch_0
    const-string/jumbo v0, "queryParameter"

    return-object v0

    .line 151
    :pswitch_1
    const-string v0, "getParameter"

    return-object v0

    .line 147
    :pswitch_2
    const-string/jumbo v0, "setParameter"

    return-object v0

    .line 143
    :pswitch_3
    const-string/jumbo v0, "stopRecognition"

    return-object v0

    .line 139
    :pswitch_4
    const-string/jumbo v0, "startRecognition"

    return-object v0

    .line 135
    :pswitch_5
    const-string v0, "getDspModuleProperties"

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

    .line 126
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 462
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 166
    invoke-static {p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 170
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.app.IVoiceInteractionSoundTriggerSession"

    .line 171
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 172
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 182
    packed-switch v7, :pswitch_data_1

    .line 261
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 178
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v11

    .line 250
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v2

    .line 255
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getParameter(II)I

    move-result v2

    .line 243
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    goto/16 :goto_0

    .line 224
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->setParameter(III)I

    move-result v3

    .line 231
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    goto :goto_0

    .line 212
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 214
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v1

    .line 215
    .local v1, "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v2

    .line 217
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    goto :goto_0

    .line 194
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 196
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    move-result-object v14

    .line 200
    .local v14, "_arg2":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 202
    .local v15, "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 203
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    .line 205
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto :goto_0

    .line 186
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Lcom/android/internal/app/IHotwordRecognitionStatusCallback;
    .end local v15    # "_arg3":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .end local v16    # "_arg4":Z
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession$Stub;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    .line 187
    .local v0, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 189
    nop

    .line 264
    .end local v0    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :goto_0
    return v11

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
