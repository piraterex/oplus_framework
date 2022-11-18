.class public abstract Landroid/hardware/tv/tuner/IDvr$Stub;
.super Landroid/os/Binder;
.source "IDvr.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDvr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDvr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_attachFilter:I = 0x3

.field static final blacklist TRANSACTION_close:I = 0x8

.field static final blacklist TRANSACTION_configure:I = 0x2

.field static final blacklist TRANSACTION_detachFilter:I = 0x4

.field static final blacklist TRANSACTION_flush:I = 0x7

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getQueueDesc:I = 0x1

.field static final blacklist TRANSACTION_start:I = 0x5

.field static final blacklist TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->markVintfStability()V

    .line 63
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDvr;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDvr;

    if-eqz v1, :cond_1

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IDvr;

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IDvr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 82
    return-object p0
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

    .line 86
    sget-object v0, Landroid/hardware/tv/tuner/IDvr$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 99
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v1

    .line 105
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return v1

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->close()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->flush()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->stop()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvr$Stub;->start()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 143
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    .line 144
    .local v2, "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->detachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->attachFilter(Landroid/hardware/tv/tuner/IFilter;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_6
    sget-object v2, Landroid/hardware/tv/tuner/DvrSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DvrSettings;

    .line 126
    .local v2, "_arg0":Landroid/hardware/tv/tuner/DvrSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->configure(Landroid/hardware/tv/tuner/DvrSettings;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/DvrSettings;
    :pswitch_7
    new-instance v2, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {v2}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    .line 116
    .local v2, "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IDvr$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 120
    nop

    .line 178
    .end local v2    # "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

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
