.class public abstract Landroid/service/voice/IHotwordDetectionService$Stub;
.super Landroid/os/Binder;
.source "IHotwordDetectionService.java"

# interfaces
.implements Landroid/service/voice/IHotwordDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IHotwordDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detectFromDspSource:I = 0x1

.field static final blacklist TRANSACTION_detectFromMicrophoneSource:I = 0x2

.field static final blacklist TRANSACTION_ping:I = 0x6

.field static final blacklist TRANSACTION_stopDetection:I = 0x7

.field static final blacklist TRANSACTION_updateAudioFlinger:I = 0x4

.field static final blacklist TRANSACTION_updateContentCaptureManager:I = 0x5

.field static final blacklist TRANSACTION_updateState:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IHotwordDetectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/voice/IHotwordDetectionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.service.voice.IHotwordDetectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/voice/IHotwordDetectionService;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IHotwordDetectionService;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_0
    const-string/jumbo v0, "stopDetection"

    return-object v0

    .line 99
    :pswitch_1
    const-string/jumbo v0, "ping"

    return-object v0

    .line 95
    :pswitch_2
    const-string/jumbo v0, "updateContentCaptureManager"

    return-object v0

    .line 91
    :pswitch_3
    const-string/jumbo v0, "updateAudioFlinger"

    return-object v0

    .line 87
    :pswitch_4
    const-string/jumbo v0, "updateState"

    return-object v0

    .line 83
    :pswitch_5
    const-string v0, "detectFromMicrophoneSource"

    return-object v0

    .line 79
    :pswitch_6
    const-string v0, "detectFromDspSource"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 335
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/service/voice/IHotwordDetectionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 118
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.voice.IHotwordDetectionService"

    .line 119
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 120
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 130
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 207
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 126
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v10

    .line 202
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/IHotwordDetectionService$Stub;->stopDetection()V

    .line 203
    goto/16 :goto_0

    .line 195
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 196
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0}, Landroid/service/voice/IHotwordDetectionService$Stub;->ping(Landroid/os/IRemoteCallback;)V

    .line 198
    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    .line 187
    .local v0, "_arg0":Landroid/view/contentcapture/IContentCaptureManager;
    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentCaptureOptions;

    .line 188
    .local v1, "_arg1":Landroid/content/ContentCaptureOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {v6, v0, v1}, Landroid/service/voice/IHotwordDetectionService$Stub;->updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V

    .line 190
    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Landroid/view/contentcapture/IContentCaptureManager;
    .end local v1    # "_arg1":Landroid/content/ContentCaptureOptions;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 178
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v6, v0}, Landroid/service/voice/IHotwordDetectionService$Stub;->updateAudioFlinger(Landroid/os/IBinder;)V

    .line 180
    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_5
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 167
    .local v0, "_arg0":Landroid/os/PersistableBundle;
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SharedMemory;

    .line 169
    .local v1, "_arg1":Landroid/os/SharedMemory;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    .line 170
    .local v2, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/voice/IHotwordDetectionService$Stub;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    .line 172
    goto :goto_0

    .line 149
    .end local v0    # "_arg0":Landroid/os/PersistableBundle;
    .end local v1    # "_arg1":Landroid/os/SharedMemory;
    .end local v2    # "_arg2":Landroid/os/IRemoteCallback;
    :pswitch_6
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    .line 151
    .local v12, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 153
    .local v13, "_arg1":I
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/media/AudioFormat;

    .line 155
    .local v14, "_arg2":Landroid/media/AudioFormat;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/PersistableBundle;

    .line 157
    .local v15, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDspHotwordDetectionCallback;

    move-result-object v16

    .line 158
    .local v16, "_arg4":Landroid/service/voice/IDspHotwordDetectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService$Stub;->detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 160
    goto :goto_0

    .line 135
    .end local v12    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/media/AudioFormat;
    .end local v15    # "_arg3":Landroid/os/PersistableBundle;
    .end local v16    # "_arg4":Landroid/service/voice/IDspHotwordDetectionCallback;
    :pswitch_7
    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .line 137
    .local v12, "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/media/AudioFormat;

    .line 139
    .local v13, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 141
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IDspHotwordDetectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDspHotwordDetectionCallback;

    move-result-object v16

    .line 142
    .local v16, "_arg3":Landroid/service/voice/IDspHotwordDetectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/IHotwordDetectionService$Stub;->detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V

    .line 144
    nop

    .line 210
    .end local v12    # "_arg0":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .end local v13    # "_arg1":Landroid/media/AudioFormat;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Landroid/service/voice/IDspHotwordDetectionCallback;
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
