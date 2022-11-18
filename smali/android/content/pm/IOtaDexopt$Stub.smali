.class public abstract Landroid/content/pm/IOtaDexopt$Stub;
.super Landroid/os/Binder;
.source "IOtaDexopt.java"

# interfaces
.implements Landroid/content/pm/IOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOtaDexopt"

.field static final greylist-max-o TRANSACTION_cleanup:I = 0x2

.field static final greylist-max-o TRANSACTION_dexoptNextPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_getProgress:I = 0x4

.field static final greylist-max-o TRANSACTION_isDone:I = 0x3

.field static final greylist-max-o TRANSACTION_nextDexoptCommand:I = 0x6

.field static final greylist-max-o TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOtaDexopt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IOtaDexopt;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOtaDexopt;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Landroid/content/pm/IOtaDexopt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_0
    const-string/jumbo v0, "nextDexoptCommand"

    return-object v0

    .line 110
    :pswitch_1
    const-string v0, "dexoptNextPackage"

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "getProgress"

    return-object v0

    .line 102
    :pswitch_3
    const-string v0, "isDone"

    return-object v0

    .line 98
    :pswitch_4
    const-string v0, "cleanup"

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "prepare"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 327
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Landroid/content/pm/IOtaDexopt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 129
    const-string v0, "android.content.pm.IOtaDexopt"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 141
    packed-switch p1, :pswitch_data_1

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 177
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    goto :goto_0

    .line 171
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->dexoptNextPackage()V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    goto :goto_0

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->getProgress()F

    move-result v2

    .line 165
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 167
    goto :goto_0

    .line 157
    .end local v2    # "_result":F
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->isDone()Z

    move-result v2

    .line 158
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    goto :goto_0

    .line 151
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->cleanup()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 145
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->prepare()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    nop

    .line 187
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
