.class public abstract Landroid/os/IRecoverySystem$Stub;
.super Landroid/os/Binder;
.source "IRecoverySystem.java"

# interfaces
.implements Landroid/os/IRecoverySystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IRecoverySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IRecoverySystem"

.field static final blacklist TRANSACTION_allocateSpaceForUpdate:I = 0x1

.field static final greylist-max-o TRANSACTION_clearBcb:I = 0x4

.field static final blacklist TRANSACTION_clearLskf:I = 0x7

.field static final blacklist TRANSACTION_isLskfCaptured:I = 0x8

.field static final greylist-max-o TRANSACTION_rebootRecoveryWithCommand:I = 0x5

.field static final blacklist TRANSACTION_rebootWithLskf:I = 0xa

.field static final blacklist TRANSACTION_rebootWithLskfAssumeSlotSwitch:I = 0x9

.field static final blacklist TRANSACTION_requestLskf:I = 0x6

.field static final greylist-max-o TRANSACTION_setupBcb:I = 0x3

.field static final greylist-max-o TRANSACTION_uncrypt:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.os.IRecoverySystem"

    invoke-virtual {p0, p0, v0}, Landroid/os/IRecoverySystem$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystem;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.os.IRecoverySystem"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IRecoverySystem;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/os/IRecoverySystem;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/os/IRecoverySystem$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IRecoverySystem$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_0
    const-string/jumbo v0, "rebootWithLskf"

    return-object v0

    .line 121
    :pswitch_1
    const-string/jumbo v0, "rebootWithLskfAssumeSlotSwitch"

    return-object v0

    .line 117
    :pswitch_2
    const-string/jumbo v0, "isLskfCaptured"

    return-object v0

    .line 113
    :pswitch_3
    const-string v0, "clearLskf"

    return-object v0

    .line 109
    :pswitch_4
    const-string/jumbo v0, "requestLskf"

    return-object v0

    .line 105
    :pswitch_5
    const-string/jumbo v0, "rebootRecoveryWithCommand"

    return-object v0

    .line 101
    :pswitch_6
    const-string v0, "clearBcb"

    return-object v0

    .line 97
    :pswitch_7
    const-string/jumbo v0, "setupBcb"

    return-object v0

    .line 93
    :pswitch_8
    const-string/jumbo v0, "uncrypt"

    return-object v0

    .line 89
    :pswitch_9
    const-string v0, "allocateSpaceForUpdate"

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

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 478
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/os/IRecoverySystem$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    const-string v0, "android.os.IRecoverySystem"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 152
    packed-switch p1, :pswitch_data_1

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v1

    .line 249
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 254
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    .line 256
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 242
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    goto/16 :goto_0

    .line 227
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v3

    .line 230
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->clearLskf(Ljava/lang/String;)Z

    move-result v3

    .line 220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 222
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 208
    .local v3, "_arg1":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v4

    .line 210
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 212
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/IntentSender;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/IRecoverySystem$Stub;->clearBcb()Z

    move-result v2

    .line 189
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto :goto_0

    .line 179
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->setupBcb(Ljava/lang/String;)Z

    move-result v3

    .line 182
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 184
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRecoverySystemProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRecoverySystemProgressListener;

    move-result-object v3

    .line 170
    .local v3, "_arg1":Landroid/os/IRecoverySystemProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/os/IRecoverySystem$Stub;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v4

    .line 172
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IRecoverySystemProgressListener;
    .end local v4    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Landroid/os/IRecoverySystem$Stub;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v3

    .line 160
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    nop

    .line 265
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
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
