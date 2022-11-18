.class public abstract Landroid/system/keystore2/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/keystore2/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteKey:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getKeyEntry:I = 0x2

.field static final blacklist TRANSACTION_getSecurityLevel:I = 0x1

.field static final blacklist TRANSACTION_grant:I = 0x6

.field static final blacklist TRANSACTION_listEntries:I = 0x4

.field static final blacklist TRANSACTION_ungrant:I = 0x7

.field static final blacklist TRANSACTION_updateSubcomponent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->markVintfStability()V

    .line 64
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/system/keystore2/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/system/keystore2/IKeystoreService;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/system/keystore2/IKeystoreService;

    return-object v1

    .line 79
    :cond_1
    new-instance v1, Landroid/system/keystore2/IKeystoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/keystore2/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 83
    return-object p0
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

    .line 87
    sget-object v0, Landroid/system/keystore2/IKeystoreService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 95
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 100
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v1

    .line 106
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Landroid/system/keystore2/IKeystoreService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 184
    :pswitch_0
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 186
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2, v3}, Landroid/system/keystore2/IKeystoreService$Stub;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto/16 :goto_0

    .line 170
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 172
    .restart local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2, v3, v4}, Landroid/system/keystore2/IKeystoreService$Stub;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v5

    .line 177
    .local v5, "_result":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 179
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_2
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 162
    .restart local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreService$Stub;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 152
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3, v4}, Landroid/system/keystore2/IKeystoreService$Stub;->listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v5

    .line 154
    .local v5, "_result":[Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 156
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":[Landroid/system/keystore2/KeyDescriptor;
    :pswitch_4
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 138
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 140
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 141
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3, v4}, Landroid/system/keystore2/IKeystoreService$Stub;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    goto :goto_0

    .line 126
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":[B
    :pswitch_5
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 127
    .restart local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreService$Stub;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v3

    .line 129
    .local v3, "_result":Landroid/system/keystore2/KeyEntryResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_result":Landroid/system/keystore2/KeyEntryResponse;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/system/keystore2/IKeystoreService$Stub;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object v3

    .line 119
    .local v3, "_result":Landroid/system/keystore2/IKeystoreSecurityLevel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 121
    nop

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/system/keystore2/IKeystoreSecurityLevel;
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
