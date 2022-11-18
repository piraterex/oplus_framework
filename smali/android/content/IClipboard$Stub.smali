.class public abstract Landroid/content/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field static final greylist-max-o TRANSACTION_addPrimaryClipChangedListener:I = 0x7

.field static final greylist-max-o TRANSACTION_clearPrimaryClip:I = 0x3

.field static final greylist-max-o TRANSACTION_getPrimaryClip:I = 0x4

.field static final greylist-max-o TRANSACTION_getPrimaryClipDescription:I = 0x5

.field static final blacklist TRANSACTION_getPrimaryClipSource:I = 0xa

.field static final greylist-max-o TRANSACTION_hasClipboardText:I = 0x9

.field static final greylist-max-o TRANSACTION_hasPrimaryClip:I = 0x6

.field static final greylist-max-o TRANSACTION_removePrimaryClipChangedListener:I = 0x8

.field static final greylist-max-o TRANSACTION_setPrimaryClip:I = 0x1

.field static final blacklist TRANSACTION_setPrimaryClipAsPackage:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.content.IClipboard"

    invoke-virtual {p0, p0, v0}, Landroid/content/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const-string v0, "android.content.IClipboard"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IClipboard;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/content/IClipboard;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/content/IClipboard$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :pswitch_0
    const-string v0, "getPrimaryClipSource"

    return-object v0

    .line 122
    :pswitch_1
    const-string v0, "hasClipboardText"

    return-object v0

    .line 118
    :pswitch_2
    const-string/jumbo v0, "removePrimaryClipChangedListener"

    return-object v0

    .line 114
    :pswitch_3
    const-string v0, "addPrimaryClipChangedListener"

    return-object v0

    .line 110
    :pswitch_4
    const-string v0, "hasPrimaryClip"

    return-object v0

    .line 106
    :pswitch_5
    const-string v0, "getPrimaryClipDescription"

    return-object v0

    .line 102
    :pswitch_6
    const-string v0, "getPrimaryClip"

    return-object v0

    .line 98
    :pswitch_7
    const-string v0, "clearPrimaryClip"

    return-object v0

    .line 94
    :pswitch_8
    const-string/jumbo v0, "setPrimaryClipAsPackage"

    return-object v0

    .line 90
    :pswitch_9
    const-string/jumbo v0, "setPrimaryClip"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 498
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Landroid/content/IClipboard$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 141
    const-string v0, "android.content.IClipboard"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 153
    packed-switch p1, :pswitch_data_1

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return v1

    .line 271
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 274
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    goto/16 :goto_0

    .line 259
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->hasClipboardText(Ljava/lang/String;I)Z

    move-result v4

    .line 264
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v2

    .line 248
    .local v2, "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/IClipboard$Stub;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto/16 :goto_0

    .line 233
    .end local v2    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    move-result-object v2

    .line 235
    .restart local v2    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/IClipboard$Stub;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_0

    .line 221
    .end local v2    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result v4

    .line 226
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 228
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;

    move-result-object v4

    .line 214
    .local v4, "_result":Landroid/content/ClipDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/ClipDescription;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v4

    .line 202
    .local v4, "_result":Landroid/content/ClipData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 204
    goto :goto_0

    .line 186
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/ClipData;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 189
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3}, Landroid/content/IClipboard$Stub;->clearPrimaryClip(Ljava/lang/String;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_0

    .line 171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_9
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 173
    .local v2, "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 177
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/IClipboard$Stub;->setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/content/ClipData;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_a
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 160
    .restart local v2    # "_arg0":Landroid/content/ClipData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/IClipboard$Stub;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    nop

    .line 285
    .end local v2    # "_arg0":Landroid/content/ClipData;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :goto_0
    return v1

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
