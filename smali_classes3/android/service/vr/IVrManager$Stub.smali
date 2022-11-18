.class public abstract Landroid/service/vr/IVrManager$Stub;
.super Landroid/os/Binder;
.source "IVrManager.java"

# interfaces
.implements Landroid/service/vr/IVrManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/IVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.vr.IVrManager"

.field static final greylist-max-o TRANSACTION_getPersistentVrModeEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_getVr2dDisplayId:I = 0x9

.field static final greylist-max-o TRANSACTION_getVrModeState:I = 0x5

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final greylist-max-o TRANSACTION_registerPersistentVrStateListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setAndBindCompositor:I = 0xa

.field static final greylist-max-o TRANSACTION_setPersistentVrModeEnabled:I = 0x7

.field static final greylist-max-o TRANSACTION_setStandbyEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_setVr2dDisplayProperties:I = 0x8

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2

.field static final greylist-max-o TRANSACTION_unregisterPersistentVrStateListener:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.service.vr.IVrManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/vr/IVrManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    const-string v0, "android.service.vr.IVrManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_1

    .line 135
    move-object v1, v0

    check-cast v1, Landroid/service/vr/IVrManager;

    return-object v1

    .line 137
    :cond_1
    new-instance v1, Landroid/service/vr/IVrManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/vr/IVrManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 146
    packed-switch p0, :pswitch_data_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 190
    :pswitch_0
    const-string/jumbo v0, "setStandbyEnabled"

    return-object v0

    .line 186
    :pswitch_1
    const-string/jumbo v0, "setAndBindCompositor"

    return-object v0

    .line 182
    :pswitch_2
    const-string/jumbo v0, "getVr2dDisplayId"

    return-object v0

    .line 178
    :pswitch_3
    const-string/jumbo v0, "setVr2dDisplayProperties"

    return-object v0

    .line 174
    :pswitch_4
    const-string/jumbo v0, "setPersistentVrModeEnabled"

    return-object v0

    .line 170
    :pswitch_5
    const-string v0, "getPersistentVrModeEnabled"

    return-object v0

    .line 166
    :pswitch_6
    const-string/jumbo v0, "getVrModeState"

    return-object v0

    .line 162
    :pswitch_7
    const-string/jumbo v0, "unregisterPersistentVrStateListener"

    return-object v0

    .line 158
    :pswitch_8
    const-string/jumbo v0, "registerPersistentVrStateListener"

    return-object v0

    .line 154
    :pswitch_9
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 150
    :pswitch_a
    const-string/jumbo v0, "registerListener"

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

    .line 141
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 585
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 201
    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    const-string v0, "android.service.vr.IVrManager"

    .line 206
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 207
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 217
    packed-switch p1, :pswitch_data_1

    .line 314
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 213
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v1

    .line 306
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 307
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setStandbyEnabled(Z)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setAndBindCompositor(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto/16 :goto_0

    .line 289
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVr2dDisplayId()I

    move-result v2

    .line 290
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    goto/16 :goto_0

    .line 281
    .end local v2    # "_result":I
    :pswitch_4
    sget-object v2, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Vr2dDisplayProperties;

    .line 282
    .local v2, "_arg0":Landroid/app/Vr2dDisplayProperties;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto :goto_0

    .line 272
    .end local v2    # "_arg0":Landroid/app/Vr2dDisplayProperties;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 273
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->setPersistentVrModeEnabled(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto :goto_0

    .line 264
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getPersistentVrModeEnabled()Z

    move-result v2

    .line 265
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    goto :goto_0

    .line 257
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVrModeState()Z

    move-result v2

    .line 258
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_0

    .line 249
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v2

    .line 250
    .local v2, "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_0

    .line 231
    .end local v2    # "_arg0":Landroid/service/vr/IPersistentVrStateCallbacks;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    .line 232
    .local v2, "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    nop

    .line 317
    .end local v2    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :goto_0
    return v1

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
