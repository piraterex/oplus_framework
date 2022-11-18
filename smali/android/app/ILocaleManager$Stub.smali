.class public abstract Landroid/app/ILocaleManager$Stub;
.super Landroid/os/Binder;
.source "ILocaleManager.java"

# interfaces
.implements Landroid/app/ILocaleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ILocaleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ILocaleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getApplicationLocales:I = 0x2

.field static final blacklist TRANSACTION_getSystemLocales:I = 0x3

.field static final blacklist TRANSACTION_setApplicationLocales:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.app.ILocaleManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ILocaleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ILocaleManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.app.ILocaleManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ILocaleManager;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/app/ILocaleManager;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/app/ILocaleManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ILocaleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "getSystemLocales"

    return-object v0

    .line 76
    :pswitch_1
    const-string v0, "getApplicationLocales"

    return-object v0

    .line 72
    :pswitch_2
    const-string/jumbo v0, "setApplicationLocales"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 226
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/app/ILocaleManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.app.ILocaleManager"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 107
    packed-switch p1, :pswitch_data_1

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/ILocaleManager$Stub;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 137
    .local v2, "_result":Landroid/os/LocaleList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    goto :goto_0

    .line 125
    .end local v2    # "_result":Landroid/os/LocaleList;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/app/ILocaleManager$Stub;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v4

    .line 130
    .local v4, "_result":Landroid/os/LocaleList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 132
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/LocaleList;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/LocaleList;

    .line 117
    .local v4, "_arg2":Landroid/os/LocaleList;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ILocaleManager$Stub;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    nop

    .line 146
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/LocaleList;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
