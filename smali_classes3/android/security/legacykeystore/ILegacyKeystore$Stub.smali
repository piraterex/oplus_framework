.class public abstract Landroid/security/legacykeystore/ILegacyKeystore$Stub;
.super Landroid/os/Binder;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/security/legacykeystore/ILegacyKeystore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/legacykeystore/ILegacyKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_get:I = 0x1

.field static final blacklist TRANSACTION_list:I = 0x4

.field static final blacklist TRANSACTION_put:I = 0x2

.field static final blacklist TRANSACTION_remove:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    sget-object v0, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 92
    if-nez p0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 96
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/legacykeystore/ILegacyKeystore;

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    check-cast v1, Landroid/security/legacykeystore/ILegacyKeystore;

    return-object v1

    .line 99
    :cond_1
    new-instance v1, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 103
    return-object p0
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

    .line 107
    sget-object v0, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_1

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 160
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 163
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 167
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->remove(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 141
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->put(Ljava/lang/String;I[B)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->get(Ljava/lang/String;I)[B

    move-result-object v4

    .line 129
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 131
    nop

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":[B
    :goto_0
    return v1

    nop

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
