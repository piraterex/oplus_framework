.class public abstract Landroid/app/timezone/IRulesManager$Stub;
.super Landroid/os/Binder;
.source "IRulesManager.java"

# interfaces
.implements Landroid/app/timezone/IRulesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/IRulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getRulesState:I = 0x1

.field static final blacklist TRANSACTION_requestInstall:I = 0x2

.field static final blacklist TRANSACTION_requestNothing:I = 0x4

.field static final blacklist TRANSACTION_requestUninstall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "android.app.timezone.IRulesManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/timezone/IRulesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "android.app.timezone.IRulesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/timezone/IRulesManager;

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Landroid/app/timezone/IRulesManager;

    return-object v1

    .line 102
    :cond_1
    new-instance v1, Landroid/app/timezone/IRulesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/timezone/IRulesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 111
    packed-switch p0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_0
    const-string/jumbo v0, "requestNothing"

    return-object v0

    .line 123
    :pswitch_1
    const-string/jumbo v0, "requestUninstall"

    return-object v0

    .line 119
    :pswitch_2
    const-string/jumbo v0, "requestInstall"

    return-object v0

    .line 115
    :pswitch_3
    const-string v0, "getRulesState"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 106
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 343
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 138
    invoke-static {p1}, Landroid/app/timezone/IRulesManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 142
    const-string v0, "android.app.timezone.IRulesManager"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 154
    packed-switch p1, :pswitch_data_1

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 192
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 194
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 195
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2, v3}, Landroid/app/timezone/IRulesManager$Stub;->requestNothing([BZ)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v3

    .line 183
    .local v3, "_arg1":Landroid/app/timezone/ICallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Landroid/app/timezone/IRulesManager$Stub;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v4

    .line 185
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    goto :goto_0

    .line 166
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroid/app/timezone/ICallback;
    .end local v4    # "_result":I
    :pswitch_3
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 168
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 170
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/timezone/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/ICallback;

    move-result-object v4

    .line 171
    .local v4, "_arg2":Landroid/app/timezone/ICallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/timezone/IRulesManager$Stub;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v5

    .line 173
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    goto :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Landroid/app/timezone/ICallback;
    .end local v5    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/timezone/IRulesManager$Stub;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v2

    .line 159
    .local v2, "_result":Landroid/app/timezone/RulesState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 161
    nop

    .line 205
    .end local v2    # "_result":Landroid/app/timezone/RulesState;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
