.class public abstract Landroid/security/maintenance/IKeystoreMaintenance$Stub;
.super Landroid/os/Binder;
.source "IKeystoreMaintenance.java"

# interfaces
.implements Landroid/security/maintenance/IKeystoreMaintenance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/maintenance/IKeystoreMaintenance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearNamespace:I = 0x4

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x9

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x6

.field static final blacklist TRANSACTION_getState:I = 0x5

.field static final blacklist TRANSACTION_migrateKeyNamespace:I = 0x8

.field static final blacklist TRANSACTION_onDeviceOffBody:I = 0x7

.field static final blacklist TRANSACTION_onUserAdded:I = 0x1

.field static final blacklist TRANSACTION_onUserPasswordChanged:I = 0x3

.field static final blacklist TRANSACTION_onUserRemoved:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 154
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/maintenance/IKeystoreMaintenance;

    if-eqz v1, :cond_1

    .line 155
    move-object v1, v0

    check-cast v1, Landroid/security/maintenance/IKeystoreMaintenance;

    return-object v1

    .line 157
    :cond_1
    new-instance v1, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 161
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

    .line 165
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 177
    packed-switch p1, :pswitch_data_1

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 254
    :pswitch_1
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->deleteAllKeys()V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_0

    .line 244
    :pswitch_2
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 246
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyDescriptor;

    .line 247
    .local v3, "_arg1":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_0

    .line 237
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_3
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onDeviceOffBody()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto :goto_0

    .line 231
    :pswitch_4
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->earlyBootEnded()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto :goto_0

    .line 222
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getState(I)I

    move-result v3

    .line 225
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 214
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->clearNamespace(IJ)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_0

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 203
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserPasswordChanged(I[B)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserRemoved(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_0

    .line 182
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserAdded(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    nop

    .line 263
    .end local v2    # "_arg0":I
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
