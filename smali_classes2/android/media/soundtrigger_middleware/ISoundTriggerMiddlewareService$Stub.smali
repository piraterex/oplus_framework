.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerMiddlewareService.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachAsMiddleman:I = 0x4

.field static final blacklist TRANSACTION_attachAsOriginator:I = 0x3

.field static final blacklist TRANSACTION_listModulesAsMiddleman:I = 0x2

.field static final blacklist TRANSACTION_listModulesAsOriginator:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 124
    packed-switch p1, :pswitch_data_1

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 165
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, "_arg0":I
    sget-object v3, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/permission/Identity;

    .line 169
    .local v3, "_arg1":Landroid/media/permission/Identity;
    sget-object v4, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/permission/Identity;

    .line 171
    .local v4, "_arg2":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v5

    .line 172
    .local v5, "_arg3":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v6

    .line 174
    .local v6, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 176
    goto :goto_0

    .line 151
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/permission/Identity;
    .end local v4    # "_arg2":Landroid/media/permission/Identity;
    .end local v5    # "_arg3":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .end local v6    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/permission/Identity;

    .line 155
    .restart local v3    # "_arg1":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v4

    .line 156
    .local v4, "_arg2":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v5

    .line 158
    .local v5, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 160
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/media/permission/Identity;
    .end local v4    # "_arg2":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .end local v5    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :pswitch_3
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 141
    .local v2, "_arg0":Landroid/media/permission/Identity;
    sget-object v3, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/permission/Identity;

    .line 142
    .restart local v3    # "_arg1":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v4

    .line 144
    .local v4, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 146
    goto :goto_0

    .line 129
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v3    # "_arg1":Landroid/media/permission/Identity;
    .end local v4    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :pswitch_4
    sget-object v2, Landroid/media/permission/Identity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/permission/Identity;

    .line 130
    .restart local v2    # "_arg0":Landroid/media/permission/Identity;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v3

    .line 132
    .local v3, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    nop

    .line 183
    .end local v2    # "_arg0":Landroid/media/permission/Identity;
    .end local v3    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
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
