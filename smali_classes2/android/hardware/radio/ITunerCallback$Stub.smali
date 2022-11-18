.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final greylist-max-o TRANSACTION_onAntennaState:I = 0x7

.field static final greylist-max-o TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x8

.field static final greylist-max-o TRANSACTION_onBackgroundScanComplete:I = 0x9

.field static final greylist-max-o TRANSACTION_onConfigurationChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onCurrentProgramInfoChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onEmergencyAnnouncement:I = 0x6

.field static final greylist-max-o TRANSACTION_onError:I = 0x1

.field static final greylist-max-o TRANSACTION_onParametersUpdated:I = 0xc

.field static final greylist-max-o TRANSACTION_onProgramListChanged:I = 0xa

.field static final greylist-max-o TRANSACTION_onProgramListUpdated:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrafficAnnouncement:I = 0x5

.field static final greylist-max-o TRANSACTION_onTuneFailed:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_0
    const-string v0, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/ITunerCallback;

    return-object v1

    .line 74
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 131
    :pswitch_0
    const-string v0, "onParametersUpdated"

    return-object v0

    .line 127
    :pswitch_1
    const-string v0, "onProgramListUpdated"

    return-object v0

    .line 123
    :pswitch_2
    const-string v0, "onProgramListChanged"

    return-object v0

    .line 119
    :pswitch_3
    const-string v0, "onBackgroundScanComplete"

    return-object v0

    .line 115
    :pswitch_4
    const-string v0, "onBackgroundScanAvailabilityChange"

    return-object v0

    .line 111
    :pswitch_5
    const-string v0, "onAntennaState"

    return-object v0

    .line 107
    :pswitch_6
    const-string v0, "onEmergencyAnnouncement"

    return-object v0

    .line 103
    :pswitch_7
    const-string v0, "onTrafficAnnouncement"

    return-object v0

    .line 99
    :pswitch_8
    const-string v0, "onCurrentProgramInfoChanged"

    return-object v0

    .line 95
    :pswitch_9
    const-string v0, "onConfigurationChanged"

    return-object v0

    .line 91
    :pswitch_a
    const-string v0, "onTuneFailed"

    return-object v0

    .line 87
    :pswitch_b
    const-string v0, "onError"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 2
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg0"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 251
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 452
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 142
    invoke-static {p1}, Landroid/hardware/radio/ITunerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const-string v0, "android.hardware.radio.ITunerCallback"

    .line 147
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 158
    packed-switch p1, :pswitch_data_1

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 248
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "N":I
    if-gez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v3, "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v3}, Landroid/hardware/radio/ITunerCallback$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 257
    .end local v2    # "N":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/Map;)V

    .line 259
    goto/16 :goto_1

    .line 239
    .end local v3    # "_arg0":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    sget-object v2, Landroid/hardware/radio/ProgramList$Chunk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    .line 240
    .local v2, "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 242
    goto/16 :goto_1

    .line 233
    .end local v2    # "_arg0":Landroid/hardware/radio/ProgramList$Chunk;
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 234
    goto :goto_1

    .line 228
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 229
    goto :goto_1

    .line 221
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 222
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 224
    goto :goto_1

    .line 213
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 214
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 216
    goto :goto_1

    .line 205
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 206
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 208
    goto :goto_1

    .line 197
    .end local v2    # "_arg0":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 198
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 200
    goto :goto_1

    .line 189
    .end local v2    # "_arg0":Z
    :pswitch_9
    sget-object v2, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 190
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 192
    goto :goto_1

    .line 181
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :pswitch_a
    sget-object v2, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 182
    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 184
    goto :goto_1

    .line 171
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramSelector;

    .line 174
    .local v3, "_arg1":Landroid/hardware/radio/ProgramSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    .line 176
    goto :goto_1

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/ProgramSelector;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 166
    nop

    .line 266
    .end local v2    # "_arg0":I
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
