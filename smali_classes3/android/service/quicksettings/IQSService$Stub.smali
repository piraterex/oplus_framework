.class public abstract Landroid/service/quicksettings/IQSService$Stub;
.super Landroid/os/Binder;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSService"

.field static final greylist-max-o TRANSACTION_getTile:I = 0x1

.field static final greylist-max-o TRANSACTION_isLocked:I = 0x6

.field static final greylist-max-o TRANSACTION_isSecure:I = 0x7

.field static final greylist-max-o TRANSACTION_onDialogHidden:I = 0x9

.field static final greylist-max-o TRANSACTION_onShowDialog:I = 0x4

.field static final greylist-max-o TRANSACTION_onStartActivity:I = 0x5

.field static final greylist-max-o TRANSACTION_onStartSuccessful:I = 0xa

.field static final greylist-max-o TRANSACTION_startUnlockAndRun:I = 0x8

.field static final greylist-max-o TRANSACTION_updateQsTile:I = 0x2

.field static final greylist-max-o TRANSACTION_updateStatusIcon:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "android.service.quicksettings.IQSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/service/quicksettings/IQSService;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Landroid/service/quicksettings/IQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    const-string/jumbo v0, "onStartSuccessful"

    return-object v0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "onDialogHidden"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "startUnlockAndRun"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "isSecure"

    return-object v0

    .line 103
    :pswitch_4
    const-string/jumbo v0, "isLocked"

    return-object v0

    .line 99
    :pswitch_5
    const-string/jumbo v0, "onStartActivity"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "onShowDialog"

    return-object v0

    .line 91
    :pswitch_7
    const-string/jumbo v0, "updateStatusIcon"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "updateQsTile"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "getTile"

    return-object v0

    nop

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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 438
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/service/quicksettings/IQSService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    const-string v0, "android.service.quicksettings.IQSService"

    .line 135
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    packed-switch p1, :pswitch_data_1

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 235
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 236
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/os/IBinder;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_0

    .line 226
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/os/IBinder;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/os/IBinder;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    move-result v2

    .line 210
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    goto :goto_0

    .line 202
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    move-result v2

    .line 203
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_0

    .line 194
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/os/IBinder;)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 185
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/os/IBinder;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 174
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    .line 176
    .local v3, "_arg1":Landroid/graphics/drawable/Icon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/graphics/drawable/Icon;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_9
    sget-object v2, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/quicksettings/Tile;

    .line 163
    .local v2, "_arg0":Landroid/service/quicksettings/Tile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 164
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":Landroid/service/quicksettings/Tile;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v3

    .line 154
    .local v3, "_result":Landroid/service/quicksettings/Tile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 156
    nop

    .line 246
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/service/quicksettings/Tile;
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
