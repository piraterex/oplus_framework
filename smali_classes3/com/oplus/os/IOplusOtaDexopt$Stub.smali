.class public abstract Lcom/oplus/os/IOplusOtaDexopt$Stub;
.super Landroid/os/Binder;
.source "IOplusOtaDexopt.java"

# interfaces
.implements Lcom/oplus/os/IOplusOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/IOplusOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/IOplusOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cleanup:I = 0x2

.field static final blacklist TRANSACTION_dexoptNextPackage:I = 0x5

.field static final blacklist TRANSACTION_dump:I = 0x7

.field static final blacklist TRANSACTION_getProgress:I = 0x4

.field static final blacklist TRANSACTION_interruptOtaDexopt:I = 0x8

.field static final blacklist TRANSACTION_isDone:I = 0x3

.field static final blacklist TRANSACTION_nextDexoptCommand:I = 0x6

.field static final blacklist TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-string v0, "com.oplus.os.IOplusOtaDexopt"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusOtaDexopt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    const-string v0, "com.oplus.os.IOplusOtaDexopt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 87
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/os/IOplusOtaDexopt;

    if-eqz v1, :cond_1

    .line 88
    move-object v1, v0

    check-cast v1, Lcom/oplus/os/IOplusOtaDexopt;

    return-object v1

    .line 90
    :cond_1
    new-instance v1, Lcom/oplus/os/IOplusOtaDexopt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 99
    packed-switch p0, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 131
    :pswitch_0
    const-string/jumbo v0, "interruptOtaDexopt"

    return-object v0

    .line 127
    :pswitch_1
    const-string v0, "dump"

    return-object v0

    .line 123
    :pswitch_2
    const-string/jumbo v0, "nextDexoptCommand"

    return-object v0

    .line 119
    :pswitch_3
    const-string v0, "dexoptNextPackage"

    return-object v0

    .line 115
    :pswitch_4
    const-string v0, "getProgress"

    return-object v0

    .line 111
    :pswitch_5
    const-string/jumbo v0, "isDone"

    return-object v0

    .line 107
    :pswitch_6
    const-string v0, "cleanup"

    return-object v0

    .line 103
    :pswitch_7
    const-string/jumbo v0, "prepare"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 94
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 391
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 142
    invoke-static {p1}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 146
    const-string v0, "com.oplus.os.IOplusOtaDexopt"

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

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v1

    .line 208
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->interruptOtaDexopt()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->dump()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    goto :goto_0

    .line 194
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v2

    .line 195
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    goto :goto_0

    .line 188
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->dexoptNextPackage()V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_0

    .line 181
    :pswitch_5
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->getProgress()F

    move-result v2

    .line 182
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    goto :goto_0

    .line 174
    .end local v2    # "_result":F
    :pswitch_6
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->isDone()Z

    move-result v2

    .line 175
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    goto :goto_0

    .line 168
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->cleanup()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_0

    .line 162
    :pswitch_8
    invoke-virtual {p0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->prepare()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    nop

    .line 217
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
