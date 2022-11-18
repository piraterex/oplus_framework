.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppSessionCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAdRequest:I = 0x10

.field static final blacklist TRANSACTION_onBiInteractiveAppCreated:I = 0x6

.field static final blacklist TRANSACTION_onBroadcastInfoRequest:I = 0x3

.field static final blacklist TRANSACTION_onCommandRequest:I = 0x8

.field static final blacklist TRANSACTION_onLayoutSurface:I = 0x2

.field static final blacklist TRANSACTION_onRemoveBroadcastInfo:I = 0x4

.field static final blacklist TRANSACTION_onRequestCurrentChannelLcn:I = 0xb

.field static final blacklist TRANSACTION_onRequestCurrentChannelUri:I = 0xa

.field static final blacklist TRANSACTION_onRequestCurrentTvInputId:I = 0xe

.field static final blacklist TRANSACTION_onRequestSigning:I = 0xf

.field static final blacklist TRANSACTION_onRequestStreamVolume:I = 0xc

.field static final blacklist TRANSACTION_onRequestTrackInfoList:I = 0xd

.field static final blacklist TRANSACTION_onSessionCreated:I = 0x1

.field static final blacklist TRANSACTION_onSessionStateChanged:I = 0x5

.field static final blacklist TRANSACTION_onSetVideoBounds:I = 0x9

.field static final blacklist TRANSACTION_onTeletextAppStateChanged:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "onAdRequest"

    return-object v0

    .line 158
    :pswitch_1
    const-string v0, "onRequestSigning"

    return-object v0

    .line 154
    :pswitch_2
    const-string v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 150
    :pswitch_3
    const-string v0, "onRequestTrackInfoList"

    return-object v0

    .line 146
    :pswitch_4
    const-string v0, "onRequestStreamVolume"

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "onRequestCurrentChannelLcn"

    return-object v0

    .line 138
    :pswitch_6
    const-string v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 134
    :pswitch_7
    const-string v0, "onSetVideoBounds"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "onCommandRequest"

    return-object v0

    .line 126
    :pswitch_9
    const-string v0, "onTeletextAppStateChanged"

    return-object v0

    .line 122
    :pswitch_a
    const-string v0, "onBiInteractiveAppCreated"

    return-object v0

    .line 118
    :pswitch_b
    const-string v0, "onSessionStateChanged"

    return-object v0

    .line 114
    :pswitch_c
    const-string v0, "onRemoveBroadcastInfo"

    return-object v0

    .line 110
    :pswitch_d
    const-string v0, "onBroadcastInfoRequest"

    return-object v0

    .line 106
    :pswitch_e
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 102
    :pswitch_f
    const-string v0, "onSessionCreated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 560
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppSessionCallback"

    .line 178
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 189
    packed-switch p1, :pswitch_data_1

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 185
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v1

    .line 317
    :pswitch_1
    sget-object v2, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/AdRequest;

    .line 318
    .local v2, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onAdRequest(Landroid/media/tv/AdRequest;)V

    .line 320
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Landroid/media/tv/AdRequest;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 310
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 312
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[B
    :pswitch_3
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentTvInputId()V

    .line 298
    goto/16 :goto_0

    .line 292
    :pswitch_4
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestTrackInfoList()V

    .line 293
    goto/16 :goto_0

    .line 287
    :pswitch_5
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestStreamVolume()V

    .line 288
    goto/16 :goto_0

    .line 282
    :pswitch_6
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelLcn()V

    .line 283
    goto/16 :goto_0

    .line 277
    :pswitch_7
    invoke-virtual {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRequestCurrentChannelUri()V

    .line 278
    goto/16 :goto_0

    .line 270
    :pswitch_8
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 271
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSetVideoBounds(Landroid/graphics/Rect;)V

    .line 273
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 263
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    goto :goto_0

    .line 252
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onTeletextAppStateChanged(I)V

    .line 255
    goto :goto_0

    .line 242
    .end local v2    # "_arg0":I
    :pswitch_b
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 244
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 247
    goto :goto_0

    .line 232
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionStateChanged(II)V

    .line 237
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onRemoveBroadcastInfo(I)V

    .line 227
    goto :goto_0

    .line 216
    .end local v2    # "_arg0":I
    :pswitch_e
    sget-object v2, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/BroadcastInfoRequest;

    .line 217
    .local v2, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 219
    goto :goto_0

    .line 202
    .end local v2    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 209
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onLayoutSurface(IIII)V

    .line 211
    goto :goto_0

    .line 194
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSession;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->onSessionCreated(Landroid/media/tv/interactive/ITvInteractiveAppSession;)V

    .line 197
    nop

    .line 327
    .end local v2    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppSession;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
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
    .end packed-switch
.end method
