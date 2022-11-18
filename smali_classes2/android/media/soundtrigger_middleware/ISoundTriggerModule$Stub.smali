.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_detach:I = 0xa

.field static final blacklist TRANSACTION_forceRecognitionEvent:I = 0x6

.field static final blacklist TRANSACTION_getModelParameter:I = 0x8

.field static final blacklist TRANSACTION_loadModel:I = 0x1

.field static final blacklist TRANSACTION_loadPhraseModel:I = 0x2

.field static final blacklist TRANSACTION_queryModelParameterSupport:I = 0x9

.field static final blacklist TRANSACTION_setModelParameter:I = 0x7

.field static final blacklist TRANSACTION_startRecognition:I = 0x4

.field static final blacklist TRANSACTION_stopRecognition:I = 0x5

.field static final blacklist TRANSACTION_unloadModel:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 180
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 185
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 186
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 196
    packed-switch p1, :pswitch_data_1

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 192
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    return v1

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->detach()V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    move-result-object v4

    .line 289
    .local v4, "_result":Landroid/media/soundtrigger/ModelParameterRange;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/media/soundtrigger/ModelParameterRange;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->getModelParameter(II)I

    move-result v4

    .line 277
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    goto/16 :goto_0

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 263
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 264
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->setModelParameter(III)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_0

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->forceRecognitionEvent(I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto :goto_0

    .line 241
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->stopRecognition(I)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_0

    .line 230
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/soundtrigger/RecognitionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionConfig;

    .line 233
    .local v3, "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/soundtrigger/RecognitionConfig;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->unloadModel(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":I
    :pswitch_9
    sget-object v2, Landroid/media/soundtrigger/PhraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/PhraseSoundModel;

    .line 212
    .local v2, "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    move-result v3

    .line 214
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto :goto_0

    .line 201
    .end local v2    # "_arg0":Landroid/media/soundtrigger/PhraseSoundModel;
    .end local v3    # "_result":I
    :pswitch_a
    sget-object v2, Landroid/media/soundtrigger/SoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/soundtrigger/SoundModel;

    .line 202
    .local v2, "_arg0":Landroid/media/soundtrigger/SoundModel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    move-result v3

    .line 204
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    nop

    .line 304
    .end local v2    # "_arg0":Landroid/media/soundtrigger/SoundModel;
    .end local v3    # "_result":I
    :goto_0
    return v1

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
