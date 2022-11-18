.class public abstract Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceIndication.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_callRing:I = 0x1

.field static final blacklist TRANSACTION_callStateChanged:I = 0x2

.field static final blacklist TRANSACTION_cdmaCallWaiting:I = 0x3

.field static final blacklist TRANSACTION_cdmaInfoRec:I = 0x4

.field static final blacklist TRANSACTION_cdmaOtaProvisionStatus:I = 0x5

.field static final blacklist TRANSACTION_currentEmergencyNumberList:I = 0x6

.field static final blacklist TRANSACTION_enterEmergencyCallbackMode:I = 0x7

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_indicateRingbackTone:I = 0x9

.field static final blacklist TRANSACTION_onSupplementaryServiceIndication:I = 0xa

.field static final blacklist TRANSACTION_onUssd:I = 0xb

.field static final blacklist TRANSACTION_resendIncallMute:I = 0xc

.field static final blacklist TRANSACTION_srvccStateNotify:I = 0xd

.field static final blacklist TRANSACTION_stkCallControlAlphaNotify:I = 0xe

.field static final blacklist TRANSACTION_stkCallSetup:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    if-eqz v1, :cond_1

    .line 96
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceIndication;

    return-object v1

    .line 98
    :cond_1
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 102
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

    .line 106
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 119
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v1

    .line 125
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 271
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 274
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallSetup(IJ)V

    .line 276
    goto/16 :goto_0

    .line 261
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->stkCallControlAlphaNotify(ILjava/lang/String;)V

    .line 266
    goto/16 :goto_0

    .line 251
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->srvccStateNotify(II)V

    .line 256
    goto/16 :goto_0

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->resendIncallMute(I)V

    .line 246
    goto/16 :goto_0

    .line 231
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onUssd(IILjava/lang/String;)V

    .line 238
    goto/16 :goto_0

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    .line 224
    .local v3, "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V

    .line 226
    goto/16 :goto_0

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 214
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->indicateRingbackTone(IZ)V

    .line 216
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->exitEmergencyCallbackMode(I)V

    .line 206
    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->enterEmergencyCallbackMode(I)V

    .line 198
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/EmergencyNumber;

    .line 188
    .local v3, "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V

    .line 190
    goto :goto_0

    .line 175
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/EmergencyNumber;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaOtaProvisionStatus(II)V

    .line 180
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaInformationRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CdmaInformationRecord;

    .line 168
    .local v3, "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V

    .line 170
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/CdmaInformationRecord;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/voice/CdmaCallWaiting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/CdmaCallWaiting;

    .line 158
    .local v3, "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V

    .line 160
    goto :goto_0

    .line 147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/CdmaCallWaiting;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callStateChanged(I)V

    .line 150
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 139
    .local v3, "_arg1":Z
    sget-object v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 140
    .local v4, "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V

    .line 142
    nop

    .line 283
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
