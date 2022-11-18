.class public abstract Landroid/nfc/INfcFCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcFCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcFCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcFCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcFCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcFCardEmulation"

.field static final greylist-max-o TRANSACTION_disableNfcFForegroundService:I = 0x7

.field static final greylist-max-o TRANSACTION_enableNfcFForegroundService:I = 0x6

.field static final greylist-max-o TRANSACTION_getMaxNumOfRegisterableSystemCodes:I = 0x9

.field static final greylist-max-o TRANSACTION_getNfcFServices:I = 0x8

.field static final greylist-max-o TRANSACTION_getNfcid2ForService:I = 0x4

.field static final greylist-max-o TRANSACTION_getSystemCodeForService:I = 0x1

.field static final greylist-max-o TRANSACTION_registerSystemCodeForService:I = 0x2

.field static final greylist-max-o TRANSACTION_removeSystemCodeForService:I = 0x3

.field static final greylist-max-o TRANSACTION_setNfcid2ForService:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.nfc.INfcFCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcFCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcFCardEmulation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "android.nfc.INfcFCardEmulation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcFCardEmulation;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcFCardEmulation;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcFCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 118
    :pswitch_0
    const-string v0, "getMaxNumOfRegisterableSystemCodes"

    return-object v0

    .line 114
    :pswitch_1
    const-string v0, "getNfcFServices"

    return-object v0

    .line 110
    :pswitch_2
    const-string v0, "disableNfcFForegroundService"

    return-object v0

    .line 106
    :pswitch_3
    const-string v0, "enableNfcFForegroundService"

    return-object v0

    .line 102
    :pswitch_4
    const-string v0, "setNfcid2ForService"

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "getNfcid2ForService"

    return-object v0

    .line 94
    :pswitch_6
    const-string v0, "removeSystemCodeForService"

    return-object v0

    .line 90
    :pswitch_7
    const-string v0, "registerSystemCodeForService"

    return-object v0

    .line 86
    :pswitch_8
    const-string v0, "getSystemCodeForService"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 448
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 129
    invoke-static {p1}, Landroid/nfc/INfcFCardEmulation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 133
    const-string v0, "android.nfc.INfcFCardEmulation"

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 135
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 145
    packed-switch p1, :pswitch_data_1

    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 141
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return v1

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->getMaxNumOfRegisterableSystemCodes()I

    move-result v2

    .line 241
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    goto/16 :goto_0

    .line 231
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcFServices(I)Ljava/util/List;

    move-result-object v3

    .line 234
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 236
    goto/16 :goto_0

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :pswitch_3
    invoke-virtual {p0}, Landroid/nfc/INfcFCardEmulation$Stub;->disableNfcFForegroundService()Z

    move-result v2

    .line 224
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 226
    goto/16 :goto_0

    .line 214
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 215
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/nfc/INfcFCardEmulation$Stub;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z

    move-result v3

    .line 217
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .local v2, "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 204
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcFCardEmulation$Stub;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 207
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 209
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 190
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 191
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 179
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 181
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 183
    goto :goto_0

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 166
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcFCardEmulation$Stub;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 169
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 171
    goto :goto_0

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 153
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcFCardEmulation$Stub;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    nop

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
