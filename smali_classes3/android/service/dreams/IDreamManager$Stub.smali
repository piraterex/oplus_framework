.class public abstract Landroid/service/dreams/IDreamManager$Stub;
.super Landroid/os/Binder;
.source "IDreamManager.java"

# interfaces
.implements Landroid/service/dreams/IDreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/IDreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamManager"

.field static final greylist-max-o TRANSACTION_awaken:I = 0x2

.field static final greylist-max-o TRANSACTION_dream:I = 0x1

.field static final greylist-max-o TRANSACTION_finishSelf:I = 0x8

.field static final blacklist TRANSACTION_forceAmbientDisplayEnabled:I = 0xb

.field static final blacklist TRANSACTION_getDefaultDreamComponentForUser:I = 0x5

.field static final greylist-max-o TRANSACTION_getDreamComponents:I = 0x4

.field static final blacklist TRANSACTION_getDreamComponentsForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_isDreaming:I = 0x7

.field static final blacklist TRANSACTION_registerDreamOverlayService:I = 0xe

.field static final greylist-max-o TRANSACTION_setDreamComponents:I = 0x3

.field static final blacklist TRANSACTION_setDreamComponentsForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_startDozing:I = 0x9

.field static final greylist-max-o TRANSACTION_stopDozing:I = 0xa

.field static final greylist-max-o TRANSACTION_testDream:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/dreams/IDreamManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    const-string v0, "android.service.dreams.IDreamManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/dreams/IDreamManager;

    if-eqz v1, :cond_1

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/service/dreams/IDreamManager;

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Landroid/service/dreams/IDreamManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/dreams/IDreamManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 148
    :pswitch_0
    const-string/jumbo v0, "registerDreamOverlayService"

    return-object v0

    .line 144
    :pswitch_1
    const-string/jumbo v0, "setDreamComponentsForUser"

    return-object v0

    .line 140
    :pswitch_2
    const-string v0, "getDreamComponentsForUser"

    return-object v0

    .line 136
    :pswitch_3
    const-string v0, "forceAmbientDisplayEnabled"

    return-object v0

    .line 132
    :pswitch_4
    const-string/jumbo v0, "stopDozing"

    return-object v0

    .line 128
    :pswitch_5
    const-string/jumbo v0, "startDozing"

    return-object v0

    .line 124
    :pswitch_6
    const-string v0, "finishSelf"

    return-object v0

    .line 120
    :pswitch_7
    const-string/jumbo v0, "isDreaming"

    return-object v0

    .line 116
    :pswitch_8
    const-string/jumbo v0, "testDream"

    return-object v0

    .line 112
    :pswitch_9
    const-string v0, "getDefaultDreamComponentForUser"

    return-object v0

    .line 108
    :pswitch_a
    const-string v0, "getDreamComponents"

    return-object v0

    .line 104
    :pswitch_b
    const-string/jumbo v0, "setDreamComponents"

    return-object v0

    .line 100
    :pswitch_c
    const-string v0, "awaken"

    return-object v0

    .line 96
    :pswitch_d
    const-string v0, "dream"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 569
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 159
    invoke-static {p1}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 163
    const-string v0, "android.service.dreams.IDreamManager"

    .line 164
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 165
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 175
    packed-switch p1, :pswitch_data_1

    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 171
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    return v1

    .line 299
    :pswitch_1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 300
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->registerDreamOverlayService(Landroid/content/ComponentName;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    .line 291
    .local v3, "_arg1":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_0

    .line 278
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v3

    .line 281
    .local v3, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 283
    goto/16 :goto_0

    .line 269
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Landroid/content/ComponentName;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 270
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->forceAmbientDisplayEnabled(Z)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->stopDozing(Landroid/os/IBinder;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 249
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/dreams/IDreamManager$Stub;->startDozing(Landroid/os/IBinder;II)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 238
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 239
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Landroid/service/dreams/IDreamManager$Stub;->finishSelf(Landroid/os/IBinder;Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_8
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->isDreaming()Z

    move-result v2

    .line 229
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 231
    goto :goto_0

    .line 218
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 221
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Landroid/service/dreams/IDreamManager$Stub;->testDream(ILandroid/content/ComponentName;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    goto :goto_0

    .line 208
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 211
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 213
    goto :goto_0

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_b
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v2

    .line 201
    .local v2, "_result":[Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 203
    goto :goto_0

    .line 192
    .end local v2    # "_result":[Landroid/content/ComponentName;
    :pswitch_c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ComponentName;

    .line 193
    .local v2, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Landroid/service/dreams/IDreamManager$Stub;->setDreamComponents([Landroid/content/ComponentName;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":[Landroid/content/ComponentName;
    :pswitch_d
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->awaken()V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_0

    .line 179
    :pswitch_e
    invoke-virtual {p0}, Landroid/service/dreams/IDreamManager$Stub;->dream()V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    nop

    .line 310
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
